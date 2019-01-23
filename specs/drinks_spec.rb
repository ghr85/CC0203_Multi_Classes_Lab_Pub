# Codeclan Week 02 Day 03

# All Day Lab - Pub

# Test Spec Drinks

require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../drinks.rb')


class TestDrinks < MiniTest::Test

  def setup
    @drink_1 = Drinks.new("G&T")
    @drink_2 = Drinks.new("Whisky")
  end

  def test_get_drink_name
    assert_equal("G&T",@drink_1.name_string)
  end

end
