require 'ruby_shell/prompt'
require 'ruby_shell/commands'

module RubyShell
  class Shell
    def initialize
      @prompt = Prompt.new('%{blue}%{user}%{reset}@%{red}RubyShell%{reset}> ')
      @commands = Commands.new
    end

    def run
      loop do
        name, args = @prompt.input
        cmd = @commands.find(name)
        begin
          cmd.execute(args)
        rescue NotImplementedError
          STDERR.puts "No such command: '#{cmd.name}'"
        end
      end
    end
  end
end
