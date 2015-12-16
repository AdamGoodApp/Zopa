require 'spec_helper'

describe Calculator do

  before :each do
    @calculator = Calculator.new "market.csv", "1000"
  end

  context "#new" do
      it 'returns a Calculator object' do
        expect(@calculator).to be_an_instance_of Calculator
      end

      it 'returns a path to a csv file' do
        expect(@calculator.csv).not_to be_empty
      end

      it 'returns an amount of money' do
        expect(@calculator.amount).to be_a(Integer)
      end
  end

  context "#correct_amount?" do
    it 'exists as a method' do
      expect(@calculator).to respond_to(:correct_amount?)
    end

    it 'returns false if less than 1000' do
      calculator = Calculator.new "market.csv", "100"
      expect(calculator.correct_amount?).to be false
    end

    it 'returns false if greater than 15000' do
      calculator = Calculator.new "market.csv", "16000"
      expect(calculator.correct_amount?).to be false
    end

    it 'returns false if not an increment of 100' do
      calculator = Calculator.new "market.csv", "150"
      expect(calculator.correct_amount?).to be false
    end
  end

end