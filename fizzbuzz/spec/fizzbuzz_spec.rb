require 'lib/fizzbuzz'
describe FizzBuzz do
	it "should return 1 when number = 1" do
		fz = FizzBuzz.new
		song = fz.sing("1")
		song.should == "@, 1, @"
	end

	it "should return 1, 2, fizz when number = 3" do
		fz = FizzBuzz.new
		song = fz.sing("3")
		song.should == "@, 1, 2, Fizz, @"
	end

	it "should return 1, 2, Fizz, 4, Buzz when number = 5" do
		fz = FizzBuzz.new
		song = fz.sing("5")
		song.should == "@, 1, 2, Fizz, 4, Buzz, @"
	end
end