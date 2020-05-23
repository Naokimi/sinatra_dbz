# frozen_string_literal: true

require_relative 'config/application'
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
