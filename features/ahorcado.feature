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

