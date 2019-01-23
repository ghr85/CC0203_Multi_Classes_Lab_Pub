# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec food

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../food.rb')


class Testfood < MiniTest::Test

  def setup
    @food_1 = Food.new("Burger",6,30)
    @food_2 = Food.new("Chicken Wings",4,20)
  end

  def test_get_food_name
    assert_equal("Burger",@food_1.name_string)
  end
  def test_get_food_price
    assert_equal(4, @food_2.price_int)
  end

  def test_rejuvination_level
    assert_equal(30, @food_1.rejuvination_level_int)
  end

end
