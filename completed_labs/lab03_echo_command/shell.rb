#!/usr/bin/env ruby

cmd = ''
until cmd == 'exit'
  print 'RubyShell> '

  parts = gets.strip.split
  cmd = parts.first
  opts = parts[1..-1]

  case cmd
  when 'help'
    puts 'This is RubyShell.'
  when 'echo'
    puts opts.join(' ')
  end
end
