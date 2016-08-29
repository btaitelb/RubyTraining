#!/usr/bin/env ruby
require 'pp'

pp days = [:mon, :tue, :wed, :thurs, :fri]
pp days[3]
pp days << :sat
pp days.push(:sun)
pp days.shift
pp days.first
pp days.methods.count
