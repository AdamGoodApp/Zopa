require 'CSV'

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


    # CSV.foreach(csv) do |row|
  #   p row
  # end



end