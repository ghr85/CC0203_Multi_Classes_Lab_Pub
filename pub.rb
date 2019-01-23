class Pub

  attr_reader :name_string, :till_int, :drinks_array, :food_array

  def initialize(name_string, till_int, drinks_array, food_array)
    @name_string = name_string
    @till_int = till_int
    @drinks_array = drinks_array
    @food_array = food_array
  end

  def has_drink(drink_object)
    return @drinks_array.include?(drink_object)
  end


  def sell_drink(drink_object)
    @till_int += drink_object.price_int
    return @till_int
  end

  def age(customer_object)
    if customer_object.age_int >= 18
      return true
    else false
  end
  end



end
