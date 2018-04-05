# app.rb
require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
