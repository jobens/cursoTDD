require 'sinatra'
require './lib/Ahorcado'
get '/' do
	erb :index
end

post '/guess' do
	result = params[:letterValue]
	puts params[:letterValue]
	puts result
	ahorcado = Ahorcado.new
	validation = ahorcado.validarPalabra(result) 	
	puts validation
	erb :index
end

