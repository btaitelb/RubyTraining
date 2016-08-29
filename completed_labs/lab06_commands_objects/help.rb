require './commands'

class Help < Command
  def initialize(commands)
    super('help')
    @description = 'Lists the available commands'
    @commands = commands
  end

  def execute(args = [])
    puts "Available commands: "
    @commands.all.each do |cmd|
      printf "%12s - %s\n", cmd.name, cmd.description
    end
    puts ""
  end
end
