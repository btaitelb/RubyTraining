#!/usr/bin/env ruby
require 'pp'

pp days = {mon: "Monday", tues: "Tuesday"}
pp days[:mon]
pp days["mon"]
pp days[:wed] = "Wednesday"
pp days.length
pp days.keys.first
