class CodeBreaker
	def guess(number)
		codigoSecreto = "2317"
		regresar = ""
		if(number == "2317")
			regresa = "Ganaste"
		end
		
		case number
		when "2"
			if number[1] = "2"
				regresar = regresar + "X"
			else
				regresar = regresar + "_"
			end
		when "3"
			if number[2] = "3"
				regresar = regresar + "X"
			else
				regresar = regresar + "_"
			end
		when "1"
			if number[3] = "1"
				regresar = regresar + "X"
			else
				regresar = regresar + "_"
			end
		when "7"
			if number[4] = "7"
				regresar = regresar + "X"
			else
				regresar = regresar + "_"
			end
		end
	end	
end