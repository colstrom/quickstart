require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe '<%= name.gsub(/-/, ' ').split(' ').map { |word| word.capitalize }.join %>' do
  it 'fails' do
    fail 'No tests written. Come on dude, you know better.'
  end
end
