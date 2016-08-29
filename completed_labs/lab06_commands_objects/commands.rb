require './echo'
require './exit'
require './hello'
require './help'

class Commands
  def initialize
    @commands = {}
    @commands['echo'] = Echo.new
    @commands['exit'] = Exit.new
    @commands['hello'] = Hello.new
    @commands['help'] = Help.new(self)
  end

  def find(name)
    @commands[name] || Command.new(name)
  end

  def all
    @commands.values
  end
end

# Commands.new.find('echo').execute(['hello', 'world'])
