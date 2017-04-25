require_relative 'multiple'
# mo ta?
	describe "Multiple" do
	  before do
	    @multiple = Multiple.new() ## initialize Multiple object
	  end

	  describe "function list multiples of 3" do
	    it "normal range" do #test case
	      results = @multiple.list_multiples(3, [1, 10]) ## 3: so chia, [5, 10]: range, can duoi 5, can tren 10
	      expect(results).to eql([3, 6, 9])
	    end

	    it "empty range" do 
	      results = @multiple.list_multiples(3, [])
	      expect(results).to eql([])
	    end

	    it "invalid range" do
	      results = @multiple.list_multiples(3, [10, 5])
	      expect(results).to eql("invalid range")
	    end
	   
	  end
	end
	