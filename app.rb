require 'sinatra'
require 'json'

configure do
	set :port, '3000'
end

get '/' do
	"Simple server is up and running."
end

post '/' do
	data = JSON.parse request.body.read
	"Received #{data['message']}"
	puts "Received #{data['message']}"
end
