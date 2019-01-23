class Pub

  attr_reader :name_string, :till_int, :drinks_array

  def initialize(name_string, till_int, drinks_array)
    @name_string = name_string
    @till_int = till_int
    @drinks_array = drinks_array
  end

  def sell_drink
    @till_int += @drinks_array.last.price_int
    return @drinks_array.pop
  end



end
