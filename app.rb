require 'sinatra'
require './lib/Ahorcado'
get '/' do
	@@ahorcado = Ahorcado.new
	@word=@@ahorcado.letrasAdivinadas
	MAX_INTENTOS=7
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
	@started = false
	@resultadoLetra = @@ahorcado.adivinoLetra result 
	@word = @@ahorcado.letrasAdivinadas
	@resultado = @@ahorcado.adivinoPalabra
	if @resultadoLetra == false
		@started = true
		@resultado = false
		@numErrors = @@ahorcado.totalErrores
	elsif @@ahorcado.adivinoPalabra
		@started = true
		@resultado = true
	end
	erb :index
end

post '/reset' do
	@@ahorcado = Ahorcado.new
	@word=@@ahorcado.letrasAdivinadas
	@started=false
	erb :index
end

