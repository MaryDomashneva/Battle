class Game

  @@current_game

  attr_reader :active_player
  attr_reader :player_1
  attr_reader :player_2

  def initialize(player_1 = Player.new, player_2 = Player.new)
    @player_1 = player_1
    @player_2 = player_2
    @players_array = [@player_1, @player_2]
    @@current_game = self
  end

  def attack(attacker)
    dependent_player.deduct_points
    switch_turns
  end

  def first_turn(active_player = nil)
    if active_player == nil
      @active_player = @players_array.sample
    else
      @active_player = active_player
    end
  end

  def switch_turns
    if @active_player == @player_1
      @active_player = @player_2
    else
      @active_player = @player_1
    end
  end

  def dependent_player
    if @active_player == @player_2
      return @player_1
    else
      return @player_2
    end
  end

  def self.current_game
    return @@current_game
  end

end
