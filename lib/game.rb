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
    change_player
  end

  def change_player
    @victim = @attacker
    @attacker = new_attacker(@attacker)
  end

  def damage_message
    if @attacker.damage
      if @attacker.damage == 0
        return "#{@victim.name} missed!"
      elsif @attacker.damage == 10
        return "SPECIAL ATTACK!!"
      elsif @attacker.damage >= 8
        return "Super effective!"
      elsif @attacker.damage <= 3
        return "Not very effective!"
      end
    end
  end

  private
  def new_attacker(attacker)
    @players.select { |player| player != attacker }.first
  end
end
