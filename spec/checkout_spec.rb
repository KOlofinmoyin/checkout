require 'checkout'

describe Shop do
    describe '#checkout' do
      subject(:shop) { described_class.new }

      context 'happy-path' do
        it "takes ('A') and returns 50" do
          expect(shop.checkout('A')).to eq 50
        end

        it "takes ('B') and returns 30" do
          expect(shop.checkout('B')).to eq 30
        end

        it "takes ('C') and returns 20" do
          expect(shop.checkout('C')).to eq 20
        end

        it "takes ('D') and returns 15" do
          expect(shop.checkout('D')).to eq 15
        end

        it "takes ('AA') and returns 100" do
          expect(shop.checkout('AA')).to eq 100
        end

        it "takes ('CC') and returns 40" do
          expect(shop.checkout('CC')).to eq 40
        end

        it "takes ('DD') and returns 30" do
          expect(shop.checkout('DD')).to eq 30
        end

        it "takes ('ABCD') and returns 115" do
          expect(shop.checkout('ABCD')).to eq 115
        end
      end

      context 'discounts' do
        it "takes ('AAA') and returns 130" do
          expect(shop.checkout('AAA')).to eq 130
        end

        it "takes ('AAAAA') and returns 230" do
          expect(shop.checkout('AAAAA')).to eq 230
        end

        it "takes ('AAAAAA') and returns 260" do
          expect(shop.checkout('AAAAAA')).to eq 260
        end

        it "takes ('BB') and returns 45" do
          expect(shop.checkout('BB')).to eq 45
        end

        it "takes ('AABABABBACCBADA') and returns 485" do
          expect(shop.checkout('AABABABBACCBADA')).to eq 485
        end
      end

      context 'error-conditions' do
        it "takes ('aBc') and returns -1" do
          expect(shop.checkout('aBc')).to eq -1
        end

        it "takes ('-B8x') and returns -1" do
          expect(shop.checkout('-B8x')).to eq -1
        end

        it "takes (18) and returns -1" do
          expect(shop.checkout(18)).to eq -1
        end
      end
    end
end
