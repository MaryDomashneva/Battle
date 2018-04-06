class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60
  STEP = 10

  def initialize(name = "Player", default_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = default_points
  end

  def deduct_points
    @hit_points -= STEP
  end
end
