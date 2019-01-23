# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Pub

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../pub.rb')
require_relative ('../drinks')

class TestPub < MiniTest::Test

  def setup
    @drink_1 = Drinks.new("Beer", 2)
    @drink_2 = Drinks.new("G&T", 2)
    @drink_3 = Drinks.new("Whisky", 3)
    @pub = Pub.new("Beer&Byte", 100, [@drink_1, @drink_2, @drink_3])
  end

  def test_get_name
    assert_equal("Beer&Byte", @pub.name_string)
  end

end
