class ShoppingCart 

	def cobrarLibros(libro1, libro2, libro3, libro4, libro5)
		
		libros = [libro1.to_i, libro2.to_i, libro3.to_i, libro4.to_i, libro5.to_i]
		subtotal = libros.sort 
		
		@paquetes = 0.00
		for i in 0..(subtotal[4]-1)
			@contador = 0.0
			for j in 0..4
				if(subtotal[j] >=1 )
	   				@contador = @contador+1
	   				subtotal[j] = subtotal[j]-1
	   			end	   		
	   			j=j+1;
	   		end
	   		case @contador
	   			when @contador = 1 then 
	   				 @paquetes =@paquetes + 1*8
	   			when @contador = 2 then
	   				 @paquetes =@paquetes + 2*8*0.95
	   			when @contador = 3 then
	   				 @paquetes =@paquetes + 3*8*0.90
	   			when @contador = 4 then
	   				 @paquetes =@paquetes + 4*8*0.80
	   			when @contador = 5 then
	   				 @paquetes =@paquetes + 5*8*0.75
   			end

	   		i=i+1;
		end
		
		@total = sprintf( "%0.02f toñolares", @paquetes)

	end

end