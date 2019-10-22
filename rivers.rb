class Rivers

  attr_reader :name, :fish_array

  def initialize(name)
    @name = name
    @fish_array = []
  end

  def fish_count_in_river
    return @fish_array.count
  end

  def add_fish_to_river(fish)
    return @fish_array.push(fish)
  end

  def take_fish_from_river
    @fish_array.shift()
  end

end








# - A river should have a name e.g. "Amazon"
# - A river should hold many fish
# - A river should lose a fish when a bear takes a fish

# - A river could have a fish_count method
