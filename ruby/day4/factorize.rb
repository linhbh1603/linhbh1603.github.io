class Factorize
	def initialize(number)
		@is_valid = false if number < 2
		@is_valid = true
		@number = number
		@results = []
		raise 'invalid number'
	end

	def  factorize
		return [] unless @is_valid
		i = 2
		while condition
			if @number%i == 0
			@results << i
			@number = @number/i
			else 
				i+=1
			end	
		end
		@results
	end
end

