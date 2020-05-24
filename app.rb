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
  @char = Character.new
  erb :new
end

post '/join_the_fight' do
  @char = Character.new(name: params[:name], url: params[:url], user: params[:user])
  if @char.save
    redirect to('/')
  else
    erb :new
  end
end
