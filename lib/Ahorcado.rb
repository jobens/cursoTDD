BANCOPALABRAS = ["PATO","AUTO","PAPEL","FELIZ","DINERO","ERROR","ADULTO","OJOS","AGUA","LATA"]

class Ahorcado
	def initialize
		palabrasJuego BANCOPALABRAS[6]
	end
	def getLetter(letter)
		letter
	end
	def validarPalabra(letter)
		if(letter == "A")
			puts "GOOD JOB"
			true
		else
			puts "NOT GOOD!"
			false		
		end
	end

	def findLetter(palabra, letra)
	array = palabra.chars.to_a
	puts array
	array
	end

	def findPossition(palabra, letra)
	array = palabra.chars.to_a
	array[letra]
	end  

	def palabrasJuego(palabra)
		arrayPalabra = palabra.split("")
		@palabras = []
		(0...arrayPalabra.length).each { |index|
			@palabras[index]=[arrayPalabra[index],0]
		}
	end
	
	def adivinoLetra(letra)
		adivino = false
		(0...@palabras.length).each { |index|
			if @palabras[index][0] == letra
				adivino = true
				@palabras[index][1] = true
			end
		}
		adivino
	end

	def letrasAdivinadas
		letras = ""
		(0...@palabras.length).each { |index|
			if @palabras[index][1] == true
				letras += @palabras[index][0]
			else
				letras += "_"
			end
		}
		letras
	end
end
