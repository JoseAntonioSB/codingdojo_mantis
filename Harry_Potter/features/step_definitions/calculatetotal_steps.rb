Given /^Entro a la pagina$/ do
  visit '/'
end

When /^y compro "(.*?)" libros, "(.*?)" libros, "(.*?)" libros, "(.*?)" libros, "(.*?)" libros$/ do |l1, l2, l3, l4, l5|
  	fill_in("libro1", :with => l1)
  	fill_in("libro2", :with => l2)
  	fill_in("libro3", :with => l3)
  	fill_in("libro4", :with => l4)
  	fill_in("libro5", :with => l5)
   	click_button('comprar')
end

Then /^debo de tener un saldo de "(.*?)"$/ do |totalPay|
	last_response.body.should =~ /#{totalPay}/m
end
