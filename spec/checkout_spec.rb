require 'checkout'

describe Shop do
    describe '#checkout' do
      subject(:shop) { described_class.new }

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
    end
end
