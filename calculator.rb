require 'CSV'
require_relative('lender')

class Calculator

  attr_accessor :csv, :amount

  def initialize(csv,amount)
    @csv = csv
    @amount = amount.to_i
  end

  def correct_amount?
    amount_pass = @amount >= 1000 && @amount <= 15000 && @amount % 100 == 0
    amount_pass ? true : false
  end

  def lenders
    Lender.lenders(csv).combination(2).select { |a, b,| a.available + b.available == self.amount }.first
  end

  def compounded_interest(available, rate)
    p = available
    r = rate
    t = 3
    n = 36
    p * (1 + r/n) ** (n*t)
  end

  def total_repayment
    if lenders
      total = 0
      lenders.each {|l| total += compounded_interest(l.available, l.rate)}
      total
    else
      false
    end
  end

  def total_monthly_repayment
    total_repayment / 36 if total_repayment
  end

  def average_rate
    lenders.inject{ |sum, el| sum.rate + el.rate }.to_f / lenders.size * 100
  end

end