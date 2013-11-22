require 'grooveshark'
require 'sinatra'


#SESSION_KEY = '77169411783b1391d7bb8a5b240436e0'


filename = "groovefavs.txt"
client = Grooveshark::Client.new


begin 
	user = client.login('lagnaf56@gmail.com','layellow25')
rescue InvalidAuthentication
	puts "Damn bro you got the wrong stuff"
end

songs = user.favorites

Snames = Array.new
Sartists = Array.new

songs.each do |s|
  Snames.push s.name
  Sartists.push s.artist
end

puts Snames


#File.open(filename,"w")
#songs.each do |s|
#	puts("#{s.name}-#{s.artist}")
#end
