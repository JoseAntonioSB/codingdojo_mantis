class RomanConverter

	def convert(number)
		if number <=10
			unidades(number)
		elsif number < 40
			decenas(number)
		end
	end

	def unidades(number)
		if number < 4
			"I"*number
		elsif number == 4
			"IV"
		elsif number == 5
			"V"
		elsif number < 9
			"V"+"I"*(number-5)
		elsif number == 9
			"IX"
		elsif number == 10
			"X"
				
		end
	end

	def decenas(number)
		numberDecenas =  number / 10.0 
		if numberDecenas > 1.0	
			numberUnidades = numberDecenas -1.0 			
			n = numberUnidades * 10
			variable = "I" * n.to_i
			"X" + variable
		end
	end
end
