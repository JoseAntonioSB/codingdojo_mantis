Feature: CalculeTotal
	Scenario: "Obtener total para 1 libro Piedra Filosofal "
	Given I open Harry Potter Store 
	When I add 1 "Piedra Filosofal" book into my shopping cart
	And I Ask Total to Pay
	Then I should see "You have to pay 8 toñolares"
	
