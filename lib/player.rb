class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 60
  STEP = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

  def initialize(name = "Player", default_points = DEFAULT_HIT_POINTS, default_step = nil)
    @name = name
    @hit_points = default_points
    @default_step = default_step
  end

  def deduct_points
    @hit_points -= (@default_step != nil ? @default_step : STEP.sample)
    @hit_points = [0, @hit_points].max
  end
end
