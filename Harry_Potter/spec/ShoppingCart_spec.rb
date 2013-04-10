require 'lib/shopping_cart'

describe ShoppingCart do 
	it "should return 8 when add 1 Piedra Filosofal book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("1", "0", "0", "0", "0")				
		total.should == "8.00 toñolares"
	end

	it "should return 30 when add 5 different books " do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("1", "1", "1", "1", "1")				
		total.should == "30.00 toñolares"
	end

	it "should return 66.4 when add 1 Piedra Filosofal book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("0", "0", "3", "2", "4")				
		total.should == "66.40 toñolares"
	end
	it "should return 635.6 when add 1 Piedra Filosofal book" do
			sp = ShoppingCart.new
			total = sp.cobrarLibros("5", "5", "5", "5", "5")				
			total.should == "150.00 toñolares"
		end

	it "should return 635.60 when add 5 differents book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("11", "7", "14", "21", "40")				
		total.should == "635.60 toñolares"
	end

	it "should return 635.60 when add 5 differents book" do
		sp = ShoppingCart.new
		total = sp.cobrarLibros("60", "30", "20", "40", "50")				
		total.should == "1304.00 toñolares"
	end
end