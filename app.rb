#!/usr/bin/env ruby
require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    # @player1 = params[:Player1]
    # @player2 = params[:Player2]
    p $player1 = Player.new(params[:player1])
    p $player2 = Player.new(params[:player2])
    redirect to('/play')
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:play)
  end

  get '/attack' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
