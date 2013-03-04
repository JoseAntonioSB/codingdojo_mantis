require 'lib/roman_converter'

describe RomanConverter do 

	before (:each) do
		@converter = RomanConverter.new
	end

	it "should return I where number equal 1" do 
		romannumber=@converter.convert(1)
		romannumber.should =="I"
	end

	it "should return II when equals 2" do 
		romannumber=@converter.convert(2)
		romannumber.should =="II"
	end

	it "should return IV when equals 4" do
		romannumber=@converter.convert(4)
		romannumber.should=="IV"
	end
	
	it "should retur V when equals 5" do
		romannumber=@converter.convert(5)
		romannumber.should=="V"
	end

	it "should retur VI when equals 6" do
		romannumber=@converter.convert(6)
		romannumber.should=="VI"
	end

	it "should retur IX when equals 9" do
		romannumber=@converter.convert(9)
		romannumber.should=="IX"
	end

	it "should retur X when equals 10" do
		romannumber=@converter.convert(10)
		romannumber.should=="X"
	end

	it "should retur XI when equals 11" do
		romannumber=@converter.convert(11)
		romannumber.should=="XI"
	end

	it "should retur XII when equals 12" do
		romannumber=@converter.convert(12)
		romannumber.should=="XII"
	end
end