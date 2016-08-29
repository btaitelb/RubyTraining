require './command'

class Echo < Command
  def initialize
    super('echo', 'Prints back the rest of the input')
  end

  def execute(args = [])
    puts args.join(' ')
  end
end
