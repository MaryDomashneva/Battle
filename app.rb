# app.rb
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $Player_1 = Player.new(params[:Player_1])
    $Player_2 = Player.new(params[:Player_2])
    $Game = Game.new($Player_1, $Player_2)
    redirect '/play'
  end

  get '/play' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    erb :play
  end

  get '/attack_player_1' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    $Game.attack(@Player_1)
    erb :attack_player_1
  end

  get '/attack_player_2' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    $Game.attack(@Player_2)
    erb :attack_player_2
  end

  run! if app_file == $0
end
