require 'lib/shopping_cart'

describe ShoppingCart do 
	it "should return 8 when add 1 Piedra Filosofal book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("1", "0", "0", "0", "0")				
		total.should == "8.00 toñolares"
	end

	it "should return 30 when add 1 Piedra Filosofal book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("1", "1", "1", "1", "1")				
		total.should == "30.00 toñolares"
	end
	
end