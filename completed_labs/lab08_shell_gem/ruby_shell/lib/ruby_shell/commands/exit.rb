require 'ruby_shell/command'

module RubyShell
  class Exit < Command
    def initialize
      super('exit', 'Exits the system')
    end

    def execute(args = [])
      exit
    end
  end
end
