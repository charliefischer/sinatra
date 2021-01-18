require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "hello"
end

get '/secret' do
  "testing"
end

get '/test' do
  "does"
end

get '/random-cat' do
 @name = ["Amigo", "Oscar", "Viking"].sample
 erb(:index)
end

get '/named-cat' do
  p params[:name]
  p params[:age]
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end
