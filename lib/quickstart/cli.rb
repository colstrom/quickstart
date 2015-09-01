require 'contracts'
require 'escort'
require 'quickstart/template'

module QuickStart
  # CommandLine Interface for QuickStart
  class CLI < ::Escort::ActionCommand::Base
    include Contracts

    Contract None => Any
    def execute
      arguments.each do |name|
        fail IOError, "#{name} already exists." if Dir.exist? name
        generate name
      end
    end

    Contract None => QuickStart::Template
    def template
      @template ||= QuickStart::Template.new command_options.fetch :template
    end

    Contract String => Any
    def generate(name)
      create_directories name
      create_files name
    end

    Contract String => Any
    def create_directories(name)
      Dir.mkdir name
      template.directories.each do |template_dir|
        dir = "#{name}/#{substitute template_dir}"
        puts "Creating #{dir}"
        Dir.mkdir dir unless Dir.exist? dir
      end
    end

    Contract String => String
    def substitute(string)
      string.dup.tap do |copy|
        command_options.each do |key, value|
          copy.gsub! "__#{key}__", value.to_s.downcase
        end
      end
    end

    Contract String => Any
    def create_files(name)
      template.files.each do |template_file|
        file = "#{name}/#{substitute template_file}"
        next if File.directory? file
        puts "Rendering #{file}"
        File.write file, template.render(template_file, command_options)
      end
    end
  end
end
