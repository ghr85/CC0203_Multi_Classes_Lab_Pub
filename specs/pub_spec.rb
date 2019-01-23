# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Pub

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../pub.rb')
require_relative ('../drink')
require_relative ('../customer')
require_relative ('../food.rb')

class TestPub < MiniTest::Test

  def setup
    @food_1 = Food.new("Burger",6,30)
    @food_2 = Food.new("Chicken Wings",4,20)
    @drink_1 = Drink.new("Beer", 2,10)
    @drink_2 = Drink.new("G&T", 2,30)
    @drink_3 = Drink.new("Whisky", 3,40)
    @customer_1 = Customer.new("Sandy", 50, 25,0)
    @customer_2 = Customer.new("Sian", 40, 17,0)
    @pub = Pub.new("Beer&Byte", 100, [@drink_1, @drink_2, @drink_3],[@food_1,@food_2])
  end

  def test_get_name
    assert_equal("Beer&Byte", @pub.name_string)
  end

  def test_get_till
    assert_equal(100, @pub.till_int)
  end

  def test_has_drink
    assert_equal(true, @pub.has_drink(@drink_1))
  end

  def test_buy_drink__pub_till
    @customer_1.buy_drink(@pub,@drink_3)
    assert_equal(103, @pub.sell_drink(@drink_3))
  end

  def test_age
    assert_equal(true, @pub.age(@customer_1))
  end

  def test_age__false
    assert_equal(false, @pub.age(@customer_2))
  end

  def test_buy_drink__too_young
    assert_equal("You're not old enough! GET OUT!", @customer_2.buy_drink(@pub, @drink_1))
  end

  def test_buy_drink__old_enough
    @customer_1.buy_drink(@pub, @drink_3)
    assert_equal(47, @customer_1.wallet_int)
  end

end
