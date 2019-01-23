class Customer

  attr_reader :name_string, :wallet_int

  def initialize(name_string, wallet_int)
    @name_string = name_string
    @wallet_int = wallet_int
  end


  def buy_drink(pub, drink_object)
    pub.has_drink(drink_object)
    @wallet_int -= drink_object.price_int
  end


end
