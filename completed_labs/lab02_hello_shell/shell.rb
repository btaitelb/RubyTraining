#!/usr/bin/env ruby

print  "What's your name? "; name = gets.strip
print  "What's your age? " ; age = gets.to_i
puts   "Hi, #{name}!"

format = "In %3d %-5s you will be %3d years old.\n"
printf format,   1, 'year',  age+1
printf format,  10, 'years', age+10
printf format, 100, 'years', age+100
