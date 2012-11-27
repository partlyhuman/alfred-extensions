#!/usr/bin/env ruby
require 'open-uri'
require 'csv'
str = open("http://download.finance.yahoo.com/d/quotes.csv?f=nac&s=#{ARGV[0]}").read
name, ask, change = CSV.parse(str).first
change = change.split(' - ').collect{|s| s.gsub('+', 'up ').gsub('-', 'down ')}.join(', that is, ')
puts "#{name} ... is at #{ask} ... #{change}"