require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#attack' do
    it 'damages player' do
      expect(player_2).to receive(:deduct_hp)
      game.attack(player_2)
    end
  end

  describe '#attacker' do
    it 'should returns the attacker' do
      expect(game.attacker).to eq player_1
    end
  end

  describe '#change_player' do
    it 'should change the attacker' do
      game.change_player
      expect(game.attacker).to eq player_2
    end
  end
end
