class Game

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @players_array = [@player_1, @player_2]
  end

  def attack(player)
    if player == @player_1
      @player_2.deduct_points
    else
      @player_1.deduct_points
    end
  end

  def first_turn
    @active_player = @players_array.sample
  end

  def switchig_turns(player)
    player = @active_player
    attack(player)  
  end

end
