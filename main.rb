#!/usr/bin/env ruby

require_relative 'calculator'

csv = ARGV.first
requested_amount = ARGV.last

result = Calculator.new(csv,requested_amount)
total = result.total_repayment

if result.correct_amount? && total
  p "Requested amount: £#{result.amount}"
  p "Rate: #{'%.1f' % result.average_rate}%"
  p "Monthly repayment: £#{'%.2f' % result.total_monthly_repayment}"
  p "Total repayment: £#{'%.2f' % total}"
else
  p "Sorry we could not process your application."
end