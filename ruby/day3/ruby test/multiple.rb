class Multiple
	def list_multiples(a, my_range)
		# my_range: [lower_and_point, upper_and_point]
		
		results = []
		if my_range.length < 2
			return results
		end
		if my_range[0] > my_range[1]
			return 'invalid range'
		end
		
		for i in my_range[0]..my_range[1]
			if i% a == 0
				results << i
				end
			end
		results
		
		
	end
end
