require 'sinatra'


get '/main' do

  erb :index

end

get '/login' do
	erb :login
end

post '/login' do
	"your username is #{params["username"]}"
end