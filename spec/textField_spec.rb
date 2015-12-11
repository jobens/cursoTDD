require './lib/Ahorcado'

describe "Ahorcado" do 
	it "Retornar Letra" do
		ahorcado = Ahorcado.new
		result = ahorcado.getLetter("A")
		expect(result).to eq("A")		
	end
	
	it "Validar palabra P_TO" do 
		ahorcado = Ahorcado.new
		result = ahorcado.validarPalabra("B")
		expect(result).to eq(false)	
	end 

	it "Validar palabra P_TO" do 
		ahorcado = Ahorcado.new
		result = ahorcado.validarPalabra("A")
		expect(result).to eq(true)	
	end 	
	
	it "Eligio una letra correcta" do
		ahorcado = Ahorcado.new
		ahorcado.palabrasJuego("carro")
		result = ahorcado.adivinoLetra 'c'
		expect(result).to eq(true)
	end 	
	
	it "Mostrar la letras adivinadas" do
		ahorcado = Ahorcado.new
		ahorcado.palabrasJuego("carro")
		ahorcado.adivinoLetra 'c'
		letras = ahorcado.letrasAdivinadas
		expect(letras).to eq("c_ _ _ _ ")
	end
	
	it "Mostrar la letras adivinadas" do
		ahorcado = Ahorcado.new
		ahorcado.palabrasJuego("carro")
		ahorcado.adivinoLetra 'c'
		ahorcado.adivinoLetra 'a'
		letras = ahorcado.letrasAdivinadas
		expect(letras).to eq("ca_ _ _ ")
	end
	
	it "Mostrar la letras adivinadas" do
		ahorcado = Ahorcado.new
		ahorcado.palabrasJuego("carro")
		ahorcado.adivinoLetra 'a'
		letras = ahorcado.letrasAdivinadas
		expect(letras).to eq("_ a_ _ _ ")
	end


=begin
	it "Separar palabra en letras" do
		ahorcado = Ahorcado.new
		palabra = "LATA"
		result = ahorcado.findLetter(palabra, "A")
		expect(result).to eq(["L","A","T","A"])
	end
	
	it "Regresar la posicion de la letra" do
		ahorcado = Ahorcado.new
		palabra = "LATA"
		result = ahorcado.findPossition(palabra, "A")
		expect(result).to eq(["1","0"])
	end
=end
end
