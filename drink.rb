# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Drink Class

class Drink

  attr_reader :name_string, :price_int, :alcohol_level_int

  def initialize(name_string,price_int, alcohol_level_int)
    @name_string = name_string
    @price_int = price_int
    @alcohol_level_int = alcohol_level_int
  end
end
