Feature: CalculeTotal

Scenario Outline: "Comprar libros"
	Given Entro a la pagina 
	When y compro <l1> libros, <l2> libros, <l3> libros, <l4> libros, <l5> libros 
	Then debo de tener un saldo de <TotalToPay>

	Scenarios:
	| l1   | l2   | l3   | l4   | l5   | TotalToPay        |
	| "1"  | "0"  | "0"  | "0"  | "0"  | "8.00 toñolares"  |
	| "1"  | "1"  | "0"  | "0"  | "0"  | "15.20 toñolares" |
	| "1"  | "1"  | "1"  | "0"  | "0"  | "21.60 toñolares" |	
	| "1"  | "1"  | "1"  | "1"  | "0"  | "25.60 toñolares" |	
	| "1"  | "1"  | "1"  | "1"  | "1"  | "30.00 toñolares" |	

	Scenarios:
	| l1 	| l2 	| l3 	| l4 	| l5 	| TotalToPay   		|
	| "0"  	| "1"  	| "0"  	| "0"  	| "0"  	| "8.00 toñolares"  |
	| "11"  | "7"  	| "14"  | "21"  | "40"  | "635.60 toñolares" |
	| "60"  | "30"  | "20"  | "50"  | "40"  | "1304.00 toñolares" |