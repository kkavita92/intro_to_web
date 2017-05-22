require 'sinatra'

get '/' do
  'Hello!'
end

get '/secret' do
  'I am a wizard'
end

get '/cat' do
  erb(:index)
end
