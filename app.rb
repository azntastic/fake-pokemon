require 'sinatra/base'

class Battle < Sinatra::Base
  attr_reader :hp, :player_1

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    p params
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @hp = 20
    p $attacked
    erb :play
  end

  post '/attack' do
    $attacked = true
    redirect '/play'
  end

  run if app_file == $0
end
