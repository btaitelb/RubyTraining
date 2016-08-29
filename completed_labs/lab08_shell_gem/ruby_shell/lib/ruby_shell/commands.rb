require 'ruby_shell/commands/echo'
require 'ruby_shell/commands/exit'
require 'ruby_shell/commands/hello'
require 'ruby_shell/commands/help'

module RubyShell
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
end
