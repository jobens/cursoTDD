Feature: Ahorcado
como jugador 
quiero ver la pantalla
para divertirme

	Scenario: Veo la pantalla inicial
		Given inicio la aplicacion
		Then ver "Ahorcado"

	Scenario: inicia juego con palabra "_ _ _ _ _ _ "
		Given inicio la aplicacion
		Then ver "_ _ _ _ _ _ "

	Scenario: gana el juego
		Given inicio la aplicacion
		When adivino "A"
		Then ver "YOU WIN"
