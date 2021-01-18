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

get '/cat', :provides => 'html' do
  "<div style='border: 3px dashed blue'>
    <img src='https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'>
  </div>"
end
