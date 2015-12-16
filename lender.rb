class Lender

  attr_accessor :name, :rate, :amount

  def initialize(name, rate, amount)
    @name = name
    @rate = rate.to_f
    @amount = amount.to_i
  end

  def self.lenders(csv)
    lenders = []
    CSV.foreach(csv, headers: true) do |obj|
      lenders << self.new(obj['Lender'], obj['Rate'], obj['Available'])
    end
    lenders
  end


end