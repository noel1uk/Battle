#!/usr/bin/env ruby
require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    # @player1 = params[:Player1]
    # @player2 = params[:Player2]
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect to('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
