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
 erb(:index)
end
