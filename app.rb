require 'sinatra'
require 'json'

configure do
	set :port, '3000'
end

get '/' do
	"Simple server is up and running."
end

post '/' do
	data = request.body.read
	"Received #{data}"
	puts "Received #{data}"
end
