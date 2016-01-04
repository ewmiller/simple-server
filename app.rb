require 'sinatra'

configure do
	set :port, '3000'
end

get '/' do
	"Simple server is up and running."
end

post '/' do
	data = request.body.read
	"Received #{data}"
end
