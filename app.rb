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

get '/cat-form' do
erb(:cat_form)
end

post '/named-cat' do
p params
@name = params[:name]
erb(:index)
end

