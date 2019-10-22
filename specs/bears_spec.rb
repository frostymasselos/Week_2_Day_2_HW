require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../rivers.rb')
require_relative('../fish.rb')

class BearsTest < MiniTest::Test

  def setup

    @bears1 = Bears.new("Yogi", "Grizzly")

    @river1 = Rivers.new("Amazon")

    @fish1 = Fish.new("Nigel")
    @fish2 = Fish.new("Watson")

    # @river1 = [@fish1, @fish2]

  end

  def test_take_one_fish_from_river
    @river1.add_fish_to_river(@fish1)
    @river1.add_fish_to_river(@fish2)
    @river1.take_fish_from_river
    assert_equal(1, @river1.fish_count_in_river)
  end

  def test_stomach_count
    assert_equal(0, @bears1.stomach_count)
  end

  def test_ingest_one_fish
    @river1.add_fish_to_river(@fish1)
    @river1.add_fish_to_river(@fish2)
    @bears1.ingest_one_fish(@river1)
    @river1.take_fish_from_river
    assert_equal(1, @bears1.stomach_count)
    assert_equal(1, @river1.fish_count_in_river)
  end

  def test_roar
    assert_equal("Roar", @bears1.roar)
  end

 #  A bear should be able to take a fish from the river
 # - A river should lose a fish when a bear takes a fish

end
