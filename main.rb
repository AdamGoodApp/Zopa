#!/usr/bin/env ruby

require 'CSV'

csv = ARGV.first
requested_amount = ARGV.last

CSV.foreach(csv) do |row|
  p row
end