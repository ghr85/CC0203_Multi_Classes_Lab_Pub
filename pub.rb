class Pub

  attr_reader :name_string, :till_int, :drinks_array

  def initialize(name_string, till_int, drinks_array)
    @name_string = name_string
    @till_int = till_int
    @drinks_array = drinks_array
  end

  def has_drink(drink_object)
    return @drinks_array.include?(drink_object)
  end


  def sell_drink(drink_object)
    @till_int += drink_object.price_int
    return @till_int
  end



end
