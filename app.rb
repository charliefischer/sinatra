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

get '/cat' do
 @random_name = ["Amigo", "Oscar", "Viking"].sample
 erb(:index)
end
