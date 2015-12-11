require './Ahorcado'

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
end
