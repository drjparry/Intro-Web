require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  "hello! hello"
end

get '/secret' do
  "ooo, you've accessed a secret message"
end

get '/cat' do
 "<!DOCTYPE html>
<html>
 <div>
 <img src='http://bit.ly/1eze8aE'>
 </div>
 </html>"
end