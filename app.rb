# app.rb
require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new($player_1, $player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.first_turn if !@game.started?
    if @game.finished?
      redirect '/finish'
    else
      erb :play
    end
  end

  get '/attack_player' do
    @game = $game
    @game.attack(@game.active_player)
    erb :attack_player
  end

  get '/finish' do
    @game = $game
    erb :finish
  end

  run! if app_file == $0
end
