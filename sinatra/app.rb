require 'sinatra'

configure do
  enable :sessions
  set :session_secret, "secret"
end

get '/' do
  "Hello World"
end

get '/secret' do
  "Shhhhh its a secret"
end

get '/name' do
  "My name is Ola"
end

get '/random_cat' do
  @sample_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named_cat' do
  p params
  @sample_name = params[:name]
  erb(:index)
end

get '/cat-naming' do
  erb(:form)
end