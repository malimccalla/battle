require 'game'

describe Game do
  subject(:game) {described_class.new(player1,player2)}
  let(:player1) {double :player, name: "Tim", healthpoints: 100}
  let(:player2) {double :player, name: "Mali", healthpoints: 100}

  describe '#attack' do
    it 'reduces player_1 hp by 10' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#player_2' do
    it 'returns the first player' do
      expect(game.player_2).to eq player2
    end
  end

end
