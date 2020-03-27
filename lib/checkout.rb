class Shop
  def checkout(basket)
    if basket == 'A'
      50
    elsif basket == 'B'
      30
    elsif basket == 'C'
      20
    else
      15
    end
  end
end
