#!/usr/bin/env ruby

def print_help
  puts 'This is RubyShell.'
end

def echo(opts = [])
  puts opts.join(' ')
end

def super_echo(opts = [])
  puts opts.map(&:capitalize).join(' ')
end

def prompt
  print 'RubyShell> '
  parts = gets.strip.split
  [ parts[0], parts[1..-1] ]
end

def repl
  cmd = ''
  until cmd == 'exit'
    cmd, opts = prompt
    case cmd
    when 'help'
      print_help
    when 'echo'
      echo(opts)
    when 's'
      super_echo(opts)
    end
  end
end

repl
