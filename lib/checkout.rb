class Shop
  def checkout(basket)
    @total ||= 0

    basket.each_char { |item|
      price = {
        'A': 50,
        'B': 30,
        'C': 20,
        'D': 15
      }
      @total += price[item.to_sym]
    }

    discount_A = ((basket.count('A')/3) * 20)
    discount_B = ((basket.count('B')/2) * 15)
    @total - (discount_A + discount_B)
    @total
  end
end
