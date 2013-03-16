Feature: CodeBreaker

Scenario Outline: "Cuando ingreso los numeros"
	Given Agrego cuatro numeros 
	When Pregunto si mis <numbers> son correctos
	Then Me regresa <code>
	Scenarios:
		|numbers|code|
		|1234|"---"|
		|2317|"Ganaste"|
		|7361|"X--"|

