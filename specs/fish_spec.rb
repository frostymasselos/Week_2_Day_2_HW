require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup
    @fish0 = Fish.new("Albert")
    @fish1 = Fish.class("Nigel")
    @fish2 = Fish.class("Robert")
    @fish3 = Fish.class("Flounder")
  end

end
