require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "hello! hello"
end

get '/secret' do
  "ooo, you've accessed a secret message"
end

get '/random-cat' do
 @name = ["amigo", "Oscar", "DrParry"].sample
 erb(:index)
end

get '/named-cat' do
p params
@name = params[:name]
 erb(:index)

  end

