require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello! hello"
end

get '/secret' do
  "ooo, you've accessed a secret message"
end

get '/cat' do
 erb(:index)
end