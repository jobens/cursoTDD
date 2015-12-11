require 'sinatra'
require './lib/Ahorcado'
get '/' do
	@word="P_TO"
	erb :index
end

post '/guess' do
	result = params[:letterValue].upcase
	puts params[:letterValue].upcase
	puts result
	ahorcado = Ahorcado.new
	validation = ahorcado.validarPalabra(result) 	
	puts validation
	if validation
		@word="PATO"
	else
		@word="P_TO"
	end
	@resultado = validation
	erb :index
end

