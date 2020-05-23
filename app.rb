# frozen_string_literal: true

require 'sinatra'

get '/' do
  if Time.now.day < 15
    erb :result
  else
    erb :index
  end
end
