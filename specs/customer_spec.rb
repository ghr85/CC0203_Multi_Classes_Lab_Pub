# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Customer

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../customer.rb')

class TestCustomer < MiniTest::Test

  def setup
    @customer_1 = Customer.new("Sandy", 50)
    @customer_2 = Customer.new("Sian", 40)
  end

  def test_get_name
    assert_equal("Sandy", @customer_1.name_string)
  end

  def test_get_wallet
    assert_equal(40, @customer_2.wallet_int)
  end
end
