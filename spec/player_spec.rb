require './lib/player'

describe Player do
  subject(:player_1) { Player.new('Mary') }
  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'Mary'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#deduct_points' do
    it 'reduce players points' do
      expect { player_1.deduct_points }.to change { player_1.hit_points }.by(-10)
    end
  end
end
