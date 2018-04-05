# app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello world!'
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @Player_1 = params[:Player_1]
    @Player_2 = params[:Player_2]
    erb :play
  end
  run! if app_file == $0
end
