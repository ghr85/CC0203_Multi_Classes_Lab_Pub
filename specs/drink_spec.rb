# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Drinks

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../drink.rb')


class TestDrink < MiniTest::Test

  def setup
    @drink_1 = Drink.new("G&T",2)
    @drink_2 = Drink.new("Whisky",3)
  end

  def test_get_drink_name
    assert_equal("G&T",@drink_1.name_string)
  end
  def test_get_drink_price
    assert_equal(3, @drink_2.price_int)
  end

end
