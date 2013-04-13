class GetScore 

	def calcularScore(r1, r2, r3, r4, r5, r6,r7,r8, r9,r10, r11,r12,r13, r14, r15, r16, r17, r18, r19, r20, r21)
		@score = obtensuma(r1, r2, r3, r4, r5) + obtensuma(r3, r4, r5, r6, r7) + obtensuma(r5, r6,r7, r8, r9) + obtensuma(r7, r8, r9, r10, r11) + obtensuma(r9, r10, r11, r12, r13) + obtensuma(r11, r12, r13, r14, r15) + obtensuma(r13, r14, r15, r16, r17) + obtensuma(r15, r16, r17, r18, r19) + obtensuma(r17, r18, r19, r20, r21) + obtensuma(r19, r20, r21)
		 
	end

	def obtensuma(n1, n2, n3, n4 = 0, n5 = 0)
		if(n1 == 10 && n2 == 10)
			return n1 + n2 + n3
		elsif (n1 == 10 && n3 == 10)
			return n1 + n3 + n5
		elsif (n1 == 10 )
			return n1 + n2 + n3 + n4				
		else
			return (n1 + n2 == 10 ? (n1 + n2 + n3) : (n1 + n2))
		end
	end
end