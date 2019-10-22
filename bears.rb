class Bears

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count
    return @stomach.count
  end

  def ingest_one_fish(river)
    # for fish in river.fish_array[-1]
      @stomach.push(river.fish_array[-1])
  end

  def roar
    return "Roar"
  end

end


# - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
# - A bear should have an empty stomach ( maybe an array )
# - A bear should be able to take a fish from the river
