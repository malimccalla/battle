class Player

DEFAULT_HP = 100


attr_reader :name, :healthpoints

def initialize(name)
  @name = name
  @healthpoints = DEFAULT_HP
end

def receive_damage
  @healthpoints -= 10
end

end
