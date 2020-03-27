require 'checkout'

describe Shop do
    describe '#checkout' do
      it "takes ('A') and returns 50" do
        shop = Shop.new
        expect(shop.checkout('A')).to eq 50
      end
    end
end
