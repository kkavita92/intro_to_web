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

post '/named-cat' do
  p params
  @name = params[:name]
  @occupation = params[:occupation]
  erb(:index)
end

get '/cat-naming-form' do
  erb(:index)
end
