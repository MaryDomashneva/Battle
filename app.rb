# app.rb
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @Player_1 = $Player_1.name
    @Player_2 = $Player_2.name
    erb :play
  end

  post '/names' do
    $Player_1 = Player.new(params[:Player_1])
    $Player_2 = Player.new(params[:Player_2])
    redirect '/play'
  end

  get '/attack' do
    @Player_1 = $Player_1.name
    @Player_2 = $Player_2.name
    erb :attack
  end

  run! if app_file == $0
end
