#!/usr/bin/env ruby

require_relative 'calculator'

csv = ARGV.first
requested_amount = ARGV.last

result = Calculator.new(csv,requested_amount)
lender = result.lowest_lender || false

if result.correct_amount? && lender
  p "Lender: #{lender.name.capitalize}"
  p "Requested amount: £#{result.amount}"
else
  p "Sorry we could not process your application."
end