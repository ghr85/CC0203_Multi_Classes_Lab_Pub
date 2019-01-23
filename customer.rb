class Customer

  attr_reader :name_string, :wallet_int

  def initialize(name_string, wallet_int)
    @name_string = name_string
    @wallet_int = wallet_int
    @drinks_array = []
  end

  def count_drink
    return @drinks_array.count
  end

  def buy_drink(pub)

    @drinks_array << pub.sell_drink
    @wallet_int -= @drinks_array.last.price_int

  end


end
