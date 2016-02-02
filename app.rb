require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "ooo, you've accessed a secret message"
end