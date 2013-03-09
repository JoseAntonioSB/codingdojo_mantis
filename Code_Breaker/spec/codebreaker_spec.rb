require 'lib/codebreaker'
describe Codebreaker do
	it "should return XXXX when number = 2713" do
		cb = Codebreaker.new
		code = cb.guess(2713)
		code.should == "XXXX"
	end

	it "should return -- when number = 1234" do
		cb = Codebreaker.new
		code = cb.guess(1234)
		code.should == "--"
	end
end