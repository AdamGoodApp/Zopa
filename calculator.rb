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

  def lowest_lender
    Lender.lenders(csv,amount).min_by(&:rate)
  end



end