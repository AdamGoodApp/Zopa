require 'spec_helper'

describe Calculator do

  before :each do
    @calculator = Calculator.new "market.csv", "1000"
  end

  describe "#new" do
    context "when Calculator is initialized" do

      it 'returns a Calculator object' do
        expect(@calculator).to be_an_instance_of Calculator
      end

    end
  end

end