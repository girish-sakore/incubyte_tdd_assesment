require './string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    context "when input is empty" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "when input has one number" do

    end
  end
end
