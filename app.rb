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

get '/cat-form' do
  erb :cat_form
end 

post '/named-cat' do
  p params[:name]
  @name = params[:name]
  erb(:index)
end
