#!/usr/bin/env ruby

require './commands'

class Shell
  def initialize
    @prompt = 'RubyShell> '
    @commands = Commands.new
  end

  def prompt
    print @prompt
    parts = gets.strip.split
    [parts[0], parts[1..-1]]
  end

  def run
    loop do
      name, args = prompt
      cmd = @commands.find(name)
      begin
        cmd.execute(args)
      rescue NotImplementedError
        puts "No such command: '#{cmd.name}'"
      end
    end
  end
end

Shell.new.run
