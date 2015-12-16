require 'spec_helper'

describe Lender do

  before :each do
    @lender = Lender.new('James', '0.075', '640')
  end

  context "#new" do
    it 'returns a Calculator object' do
      expect(@lender).to be_an_instance_of Lender
    end

    it 'returns a name' do
      expect(@lender.name).not_to be_empty
    end

    it 'returns a rate' do
      expect(@lender.rate).to be_a(Float)
    end

    it 'returns available' do
      expect(@lender.amount).to be_a(Integer)
    end
  end

  context "#lenders" do
    it 'returns array of lenders' do
      expect(Lender.lenders('market.csv')).to include(a_kind_of(Lender))
    end
  end

end