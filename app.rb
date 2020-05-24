# frozen_string_literal: true

require_relative 'config/application'
require 'rest-client'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

get '/' do
  if Time.now.day < 15
    erb :result
  else
    @team_a = Character.where(team: 'A')
    @team_b = Character.where(team: 'B')
    erb :index
  end
end

get '/join_the_fight' do
  response = RestClient.get('https://dragon-ball-api.herokuapp.com/api/character')
  @options = JSON.parse(response.body).sample(3)
  @correct = @options.sample
  erb :new
end
