Given /^Entro a la pagina$/ do
  visit '/' # express the regexp above with the code you wish you had
end

When /^lleno la tabla (\d+) roll, (\d+) roll, (\d+) roll, (\d+) roll, (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll , (\d+) roll$/ do |r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21|
    fill_in('r11', :with => r1)
    fill_in('r12', :with => r2)
    fill_in('r21', :with => r3)
    fill_in('r22', :with => r4)
    fill_in('r31', :with => r5)
    fill_in('r32', :with => r6)
    fill_in('r41', :with => r7)
    fill_in('r42', :with => r8)
    fill_in('r51', :with => r9)
    fill_in('r52', :with => r10)
    fill_in('r61', :with => r11)
    fill_in('r62', :with => r12)
    fill_in('r71', :with => r13)
    fill_in('r72', :with => r14)
    fill_in('r81', :with => r15)
    fill_in('r82', :with => r16)
    fill_in('r91', :with => r17)
    fill_in('r92', :with => r18)
    fill_in('r101', :with => r19)
    fill_in('r102', :with => r20)
    fill_in('r103', :with => r21)
	
   	click_button('calcularbutton')
end

Then /^obtener el score (\d+) del juego$/ do |score|
  last_response.body.should =~ /#{score}/m
end

