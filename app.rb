require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'I am a wizard'
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
