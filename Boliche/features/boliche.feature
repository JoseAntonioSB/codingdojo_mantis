Feature: Score

Scenario Outline: "Calcular score"
	Given Entro a la pagina 
	When lleno la tabla <r1> roll, <r2> roll, <r3> roll, <r4> roll, <r5> roll , <r6> roll , <r7> roll , <r8> roll , <r9> roll , <r10> roll , <r11> roll , <r12> roll , <r13> roll , <r14> roll , <r15> roll , <r16> roll , <r17> roll , <r18> roll , <r19> roll , <r20> roll , <r21> roll
	Then obtener el score <TotalScore> del juego
	Scenarios:
	| r1 | r2 | r3 | r4 | r5 | r6 | r7 | r8 | r9 | r10 | r11 | r12 | r13 | r14 | r15 | r16 | r17 | r18 | r19 | r20 | r21 |TotalScore|
	| 1  | 4  | 4  | 5  | 6  | 4  | 5  | 5  | 10 |   0 | 0   | 1   | 7   | 3   | 6 	 | 4   | 10  | 0   | 2   | 8   | 6 |133|
	| 10  | 0  | 10  | 0  |10  | 0  |10  | 0  |10  | 0  |10  | 0  |10  | 0  |10  | 0  |10  | 0  | 10   | 10   | 10 |300|
