#!/usr/bin/env ruby
require 'open-uri'
str = open("http://download.finance.yahoo.com/d/quotes.csv?f=acn&s=#{ARGV[0]}").read
puts str.gsub(/"/, '').gsub(',',"\t")