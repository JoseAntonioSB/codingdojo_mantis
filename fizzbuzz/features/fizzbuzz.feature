Feature: Sing

Scenario Outline: "When I ask song for 1 I got 1"
	 
	Given I start a new app:
	When I ask a song for <number>
	Then I should see <song>
	Scenarios:
		|number|song|
		|"1"|"@, 1, @"|
		|"3"|"@, 1, 2, Fizz, @"|
		|"5"|"@, 1, 2, Fizz, 4, Buzz, @"|

	
