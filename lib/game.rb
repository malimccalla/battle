require_relative 'player'

class Game
  attr_reader :player_1, :player_2, :attacker, :victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @attacker = player_1
    @victim = player_2
  end

  def attack(player)
    player.deduct_hp
  end

  def change_player
    if @attacker == @player_1
      @attacker = @player_2
      @victim = @player_1
    else
      @attacker = @player_1
      @victim = @player_2
    end
  end
end
