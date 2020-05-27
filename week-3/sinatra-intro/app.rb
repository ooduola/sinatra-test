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
"<div> <img src='http://bit.ly/1eze8aE'> <div/>"
end