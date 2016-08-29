#!/usr/bin/env ruby

name = "Ben"
age = 35
puts "Hi, I'm #{name}. I'm #{age} years old."

double_age = age * 2
puts "Hi, I'm twice #{name}'s age. I'm #{double_age} years old."

scores = [8, 9, 10, 6, 8]
last = scores.last; puts "last: #{last}"
max = scores.max; puts "max: #{max}"
third = scores[2]; puts "third: #{third}"

colors = {red: 1, green: 2, yellow: 3,
          blue: 4, magenta: 5, cyan: 6, white: 7}
yellow = colors[:yellow]; puts "yellow: #{yellow}"
colors[:black] = 0
