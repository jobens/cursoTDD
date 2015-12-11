require 'sinatra'
require './lib/Ahorcado'
get '/' do
	erb :index
end

post '/guess' do
	result = params[:letterValue].upcase
	puts params[:letterValue].upcase
	puts result
	ahorcado = Ahorcado.new
	validation = ahorcado.validarPalabra(result) 	
	puts validation
	@resultado = validation
	erb :index
end

