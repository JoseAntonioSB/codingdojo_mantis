require 'lib/GetScore'

describe GetScore do 
	it "It should return 133 for case 1" do
		getScore = GetScore.new
    	score = getScore.calcularScore(1  , 4  , 4  , 5  , 6  , 4  , 5  , 5  , 10 ,   0 , 0   , 1   , 7   , 3   , 6 	 , 4   , 10  , 0   , 2   , 8   , 6 )
    	score.should == 133
	end

	it "It should return 133 for case 1" do
		getScore = GetScore.new
    	score = getScore.calcularScore(10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,0,10,10,10 )
    	score.should == 300
	end

	it "It should return 5 for case 1" do
		getScore = GetScore.new
    	score = getScore.obtensuma(1, 4, 4, 5)
    	score.should == 5
	end

	it "It should return 11 for case 2" do
		getScore = GetScore.new
    	score = getScore.obtensuma(10, 0, 0, 1)
    	score.should == 11
	end

	it "It should return 16 for case 3" do
		getScore = GetScore.new
    	score = getScore.obtensuma(2,8,6,0)
    	score.should == 16
	end

	it "It should return 30 for case 3" do
		getScore = GetScore.new
    	score = getScore.obtensuma(10,10,10)
    	score.should == 30
	end

	it "It should return 30 for case 3" do
		getScore = GetScore.new
    	score = getScore.obtensuma(10, 0, 10, 0, 10)
    	score.should == 30
	end
end