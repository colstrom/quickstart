require 'contracts'
require 'tilt/erubis'

module QuickStart
  # Templating for QuickStart
  class Template
    include Contracts

    attr_accessor :path

    Contract String => Any
    def initialize(name)
      @name = name
      fail LoadError, "#{path} does not exist" unless Dir.exist? path
    end

    Contract None => String
    def path
      "#{root}/#{@name}"
    end

    Contract None => String
    def root
      File.expand_path ENV.fetch('QUICKSTART_TEMPLATES', './templates')
    end

    Contract None => ArrayOf[String]
    def directories
      Dir.glob("#{path}/**/*/").map do |directory|
        directory.tap { |d| d.slice! %r{^#{Regexp.quote path}/} }
      end
    end

    Contract None => ArrayOf[String]
    def files
      Dir.glob("#{path}/**/*").map do |file|
        file.tap { |f| f.slice! %r{^#{Regexp.quote path}/} }
      end
    end

    Contract String, Maybe[Hash] => String
    def render(name, overrides = {})
      template = "#{path}/#{name}"
      Tilt::ErubisTemplate.new(template).render(Object.new, overrides)
    end
  end
end
