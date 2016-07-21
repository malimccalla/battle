class Player
  DEFAULT_HIT_POINTS = 100
  attr_reader :name, :hit_points, :damage

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def deduct_hp
    calculate_damage
    @hit_points -= @damage
  end

  private
  def calculate_damage
    @damage = rand(11)
  end

end
