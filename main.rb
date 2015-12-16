#!/usr/bin/env ruby

require_relative 'calculator'

csv = ARGV.first
requested_amount = ARGV.last

result = Calculator.new(csv,requested_amount)

if result.correct_amount?
  p "Requested amount: £#{result.amount}"
else
  p "Please enter an amount between 1000 and 15000 and in increments of 100"
end

p result.lowest_lender