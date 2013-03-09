Feature: Guess

Scenario Outline: "Si me das cuatro numeros y son = 2713"
	Given I start a new app:
	When I Get a number for <numbers>
	Then I should see <symbols>
	Scenarios:
		|numbers|symbols|
		|2713|"XXXX"|