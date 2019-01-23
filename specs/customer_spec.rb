# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Customer

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../customer.rb')
require_relative ('../drink.rb')
require_relative ('../pub.rb')
require_relative ('../food.rb')

class TestCustomer < MiniTest::Test

  def setup
    @food_1 = Food.new("Burger",6,30)
    @food_2 = Food.new("Chicken Wings",4,20)
    @drink_1 = Drink.new("Beer", 2, 10)
    @drink_2 = Drink.new("G&T", 2, 30)
    @drink_3 = Drink.new("Whisky", 3, 40)
    @customer_1 = Customer.new("Sandy", 50, 25, 0)
    @customer_2 = Customer.new("Sian", 40, 17, 0)
    @pub = Pub.new("Beer&Byte", 100, [@drink_1, @drink_2, @drink_3],[@food_1,@food_2])
  end

  def test_get_name
    assert_equal("Sandy", @customer_1.name_string)
  end

  def test_get_wallet
    assert_equal(40, @customer_2.wallet_int)
  end

  def test_buy_drink__customer_wallet
    @customer_1.buy_drink(@pub, @drink_3)
    assert_equal(47, @customer_1.wallet_int)
  end

  def test_drunkenness_level
    assert_equal(0, @customer_2.drunkenness_level_int)
  end

  def test_buy_drink_alcohol_level
    @customer_1.buy_drink(@pub, @drink_3)
    assert_equal(40, @customer_1.drunkenness_level_int)
  end

  def test_buy_drink_alcohol_level__denied
    @customer_1.buy_drink(@pub, @drink_3)
    @customer_1.buy_drink(@pub, @drink_3)
    @customer_1.buy_drink(@pub, @drink_3)
    assert_equal("No more drinks for you, you drunken bum!", @customer_1.buy_drink(@pub, @drink_3))
  end

  def test_buy_food__has_money
    @customer_1.buy_food(@pub, @food_1)
  end

end
