require './lib/player'

describe Player do
  subject(:player_1) { Player.new('Mary') }

  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'Mary'
    end
  end
end
