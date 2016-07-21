require_relative 'player'

class Game
  attr_reader :players, :attacker, :victim

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @attacker = player_1
    @victim = player_2
  end

  def attack(player)
    player.deduct_hp
  end

  def change_player
    @victim = @attacker
    @attacker = new_attacker(@attacker)
  end

  private
  def new_attacker(attacker)
    @players.select { |player| player != attacker }.first
  end
end
