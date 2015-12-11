require 'sinatra'

get '/' do
	erb :index
end

post '/guess' do
	result = params[:guess]
	puts "en el action"	
	puts result	
end

