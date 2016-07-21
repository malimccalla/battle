require 'player'

describe Player do

  subject(:player) {described_class.new "Mali"}
  subject(:tim) {described_class.new('Tim')}

  describe '#name' do
    it 'will return the requested player name' do
      expect(player.name).to eq "Mali"
    end
  end

  describe '#healthpoints' do
    it 'returns the hit points' do
      expect(tim.healthpoints).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player healthpoints' do
      expect{player.receive_damage}.to change{player.healthpoints}.by(-10)
    end
  end

end
