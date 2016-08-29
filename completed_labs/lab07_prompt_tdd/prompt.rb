class Prompt
  attr_reader :text

  def initialize(text)
    @text = text
    @text.gsub!('%{user}', ENV['USER'])
    @text.gsub!('%{pwd}', ENV['PWD'])
    @text.gsub!('%{red}', "\e[31m")
    @text.gsub!('%{blue}', "\e[34m")
    @text.gsub!('%{reset}', "\e[0m")
  end

  def input
    print text
    parts = gets.strip.split
    [parts.first, parts.drop(1)]
  end
end
