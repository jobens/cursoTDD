require 'sinatra'
require './lib/Ahorcado'
get '/' do
	@@ahorcado = Ahorcado.new
	@word=@@ahorcado.letrasAdivinadas
	erb :index
end

post '/guess' do
	result = params[:letterValue].upcase
	puts params[:letterValue].upcase
	puts result
	validation = @@ahorcado.validarPalabra(result) 	
	puts validation
	if validation
		@word="PATO"
	else
		@word="P_TO"
	end
	@resultado = @@ahorcado.adivinoLetra result 
	@word = @@ahorcado.letrasAdivinadas
	erb :index
end

