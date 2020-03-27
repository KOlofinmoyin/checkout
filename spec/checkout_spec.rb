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
    end
end
