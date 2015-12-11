Feature: Ahorcado
como jugador 
quiero ver la pantalla
para divertirme

	Scenario: Veo la pantalla inicial
		Given inicio la aplicacion
		Then ver "Ahorcado"

	Scenario: inicia juego con palabra "P_TO"
		Given inicio la aplicacion
		Then ver "P_TO"

