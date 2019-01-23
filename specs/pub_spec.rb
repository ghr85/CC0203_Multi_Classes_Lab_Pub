# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Pub

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../pub.rb')
require_relative ('../drink')
require_relative ('../customer')

class TestPub < MiniTest::Test

  def setup
    @drink_1 = Drink.new("Beer", 2)
    @drink_2 = Drink.new("G&T", 2)
    @drink_3 = Drink.new("Whisky", 3)
    @customer_1 = Customer.new("Sandy", 50)
    @customer_2 = Customer.new("Sian", 40)
    @pub = Pub.new("Beer&Byte", 100, [@drink_1, @drink_2, @drink_3])
  end

  def test_get_name
    assert_equal("Beer&Byte", @pub.name_string)
  end

  def test_get_till
    assert_equal(100, @pub.till_int)
  end

end
