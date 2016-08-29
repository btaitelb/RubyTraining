require './command'

class Hello < Command
  def initialize
    super('hello', 'Says hello')
  end

  def execute(args = [])
    puts 'Hello, Commands!'
  end
end
