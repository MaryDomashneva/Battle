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

  def started?
    @active_player != nil
  end

  def finished?
    @player_1.hit_points == 0 || @player_2.hit_points == 0
  end

  def winner
    return nil if !finished?
    return @player_1 if @player_1.hit_points > 0
    return @player_2 if @player_2.hit_points > 0
  end

  def looser
    return nil if !finished?
    return @player_1 if @player_1.hit_points == 0
    return @player_2 if @player_2.hit_points == 0
  end

end
