require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  attr_reader :hp, :player_1

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new
    $player_1.name = params[:player_1]
    $player_2 = Player.new
    $player_2.name = params[:player_2]

    p $player_1
    p $player_2
    #p params
    redirect '/play'
  end

  get '/play' do

    @hp = 20
    #p $attacked
    erb :play
  end

  post '/attack' do
    $attacked = true
    redirect '/play'
  end

  run if app_file == $0
end
