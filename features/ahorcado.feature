Feature: Ahorcado
como jugador 
quiero ver la pantalla
para divertirme

	Scenario: Veo la pantalla inicial
		Given inicio la aplicacion
		Then ver "Ahorcado"

	Scenario: inicia juego con palabra "______"
		Given inicio la aplicacion
		Then ver "______"

	Scenario: gana el juego
		Given inicio la aplicacion
		When adivino "A"
		Then ver "YOU WIN"
