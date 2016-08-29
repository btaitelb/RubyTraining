module RubyShell
  class Command
    attr_reader :name, :description

    def initialize(name, description = '')
      @name = name
      @description = description
    end

    def execute(args = [])
      raise NotImplementedError
    end
  end
end
