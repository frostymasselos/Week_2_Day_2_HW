require('minitest/autorun')
require('minitest/rg')
require_relative('../rivers.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')

class RiversTest < MiniTest::Test

  def setup

    @river1 = Rivers.new("Amazon")

    @fish1 = Fish.new("Nigel")
    @fish2 = Fish.new("Watson")

  end

  def test_fish_count_in_river
    assert_equal(0, @river1.fish_count_in_river)
  end

  def test_add_fish_to_river
    @river1.add_fish_to_river(@fish1)
    assert_equal(1, @river1.fish_count_in_river)
  end

  def test_take_fish_from_river
    @river1.add_fish_to_river(@fish1)
    @river1.add_fish_to_river(@fish2)
    @river1.take_fish_from_river
    assert_equal(1, @river1.fish_count_in_river)
  end

end
