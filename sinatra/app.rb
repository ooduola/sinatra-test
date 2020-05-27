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

get '/cat' do
  @sample_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end