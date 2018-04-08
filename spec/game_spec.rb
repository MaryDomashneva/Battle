require 'game'

describe Game do
  it { expect(subject).to respond_to(:attack) }
  let (:player_1) { double :player}
  let (:player_2) { double :player}
  before {
    allow(player_1).to receive(:deduct_points)
    allow(player_2).to receive(:deduct_points)
  }
  describe '#attack' do
    context 'when player_1 attacks player_2' do
      it 'deduct the points of player_2' do
        game = Game.new(player_1, player_2)
        game.first_turn(player_1)
        game.attack(player_1)
        expect(player_2).to have_received(:deduct_points)
      end
    end

    context 'when player_2 attacks player_1' do
      it 'deduct the points of player_2' do
        game = Game.new(player_1, player_2)
        game.first_turn(player_2)
        game.attack(player_2)
        expect(player_1).to have_received(:deduct_points)
      end
    end
  end

end
