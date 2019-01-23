# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Customer

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../customer.rb')
require_relative ('../drink.rb')
require_relative ('../pub.rb')

class TestCustomer < MiniTest::Test

  def setup
    @drink_1 = Drink.new("Beer", 2)
    @drink_2 = Drink.new("G&T", 2)
    @drink_3 = Drink.new("Whisky", 3)
    @customer_1 = Customer.new("Sandy", 50)
    @customer_2 = Customer.new("Sian", 40)
    @pub = Pub.new("Beer&Byte", 100, [@drink_1, @drink_2, @drink_3])
  end

  def test_get_name
    assert_equal("Sandy", @customer_1.name_string)
  end

  def test_get_wallet
    assert_equal(40, @customer_2.wallet_int)
  end

  def test_buy_drink
    @customer_1.buy_drink(@pub)
    assert_equal(1,@customer_1.count_drink)
  end
end
