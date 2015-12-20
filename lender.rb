class Lender

  attr_accessor :name, :rate, :amount, :available

  def initialize(name, rate,available)
    @name = name
    @rate = rate.to_f
    @available = available.to_i
  end

  def self.lenders(csv)
    lenders = []
    CSV.foreach(csv, headers: true) do |obj|
      lenders << self.new(obj['Lender'], obj['Rate'], obj['Available'])
    end
    lenders.sort_by(&:rate)
  end


end