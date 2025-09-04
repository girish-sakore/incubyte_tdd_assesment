require './string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    context "when input is empty" do
      it "returns 0" do
        expect(described_class.add("")).to eq(0)
      end
    end   

    context "when input is not empty" do
      context "input does not contain any number" do
        it "returns 0" do
          expect(described_class.add("asdfsdf")).to eq(0)
        end
      end

      context "when input has one number" do
        it "returns same number as input" do
          expect(described_class.add("1")).to eq(1)
        end

        it "returns 23 for input 23" do
          expect(described_class.add("23")).to eq(23)
        end
      end

      context "when input has two numbers" do
        it "returns sum of two numbers" do
          expect(described_class.add("1,2")).to eq(3)
        end

        it "returns sum of 23 and 54 as 77" do
          expect(described_class.add("23,54")).to eq(77)
        end
      end

      context "when multiple inputs are given" do
        it "returns total of all the numbers separated by comma" do
          expect(described_class.add("1,2,3,4")).to eq(10)
        end

        it "returns total of all numbers with new line character" do
          expect(described_class.add("1\n2,3")).to eq(6)
        end

        it "returns total of all numbers (with other delimiters)" do
          expect(described_class.add("//;\n1;2")).to eq(3)
        end

        it "returns exception - no negative numbers allowed <numbers>" do
          expect{described_class.add("//;\n-1;2,-2,-5")}
          .to raise_error(ArgumentError, "negative numbers not allowed -1,-2,-5")
        end

        context "when input is not a string" do
          it "returns exception - only string is allowed" do
            expect { described_class.add(123) }
            .to raise_error(ArgumentError, "only string is allowed")
          end
        end
      end

    end
  end
end
