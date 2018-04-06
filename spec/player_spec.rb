require './lib/player'

describe Player do
  subject(:player_1) { Player.new('Mary') }
  subject(:player_2) { Player.new('Irbe') }

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

  describe '#attack' do
    it 'deduct the points' do
      expect(player_2).to receive(:deduct_points)
      player_1.attack(player_2)
    end
  end

  describe '#deduct_points' do
    it 'reduce players points' do
      expect { player_1.deduct_points }.to change { player_1.hit_points }.by(-10)
    end
  end
end
