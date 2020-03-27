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
    # return 130 if basket == 'AAA'
    discount_A = ((basket.count('A')/3) * 20)
    @total - discount_A
    # @total
  end
end
