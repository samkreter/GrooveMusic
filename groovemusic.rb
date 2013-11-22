require 'rubygems'
require 'sinatra'
require 'grooveshark'

$UserName
$Password
$Sname = Array.new

def printGroove
	filename = "groovefavs.txt"
	client = Grooveshark::Client.new
	user = client.login($UserName,$Password)
    songs = user.favorites
    songs.each do |s|
    	$Sname.push s.name
    end
end

get '/main' do

  erb :index

end

get '/login' do
	erb :login
end

post '/login' do
	
  $UserName = params["username"]
  $Password = params["password"]
  redirect '/data'
end

get '/data' do 
	printGroove
  content_type 'text/plain'
  $Sname.each do |s|
    "#{s}\n"
  end
end
