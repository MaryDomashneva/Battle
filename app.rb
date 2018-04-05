# app.rb
require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
