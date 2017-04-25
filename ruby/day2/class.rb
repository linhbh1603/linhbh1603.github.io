# class	SampleClass
#   #dc goi khi minh goi .new
#   def initialize (x,y)
#   	puts 'welcome initialize Method'
#   	@x=x
#   	@y=y
#   end
#   def sum
#   	puts (@x+@y)
  	
#   end
# end

#Khoi tao mot object cua class SampleClass
# a = SampleClass.new(5,10)
# a.sum

# def multiples (a,b)
# 	for i in a..b
# 		if i%a == 0
# 			puts i
# 		end
# 	end
# end

# multiples (3,30)

# def primes (a,b)
# 	for i in a..b
# 		if Prime.prime?(i)
# 			puts i
# 		end
# 	end
# end
# primes(3,30)

# ke thua trong ruby
class ClosedRange
	
  def initialize (lower_end_point, upper_end_point)
  	@a = lower_end_point
  	@b = upper_end_point
  end
  def is_valid? 
  	return @a<=@b
  end
  def list_number 
  	if is_valid?
  		for i in @a..@b
  			puts i
  		end
  	end
  	
  end

end


class Range
  # attr_accessor :x
  def initialize (lower_end_point, upper_end_point)
    @a = lower_end_point
    @b = upper_end_point
  end

end

class OpenRange <Range
  def list_numbers
      if is_valid?
        open_arr = (@lower_end_point..@upper_end_point).to_a
        open_arr.delete(@lower_end_point)
        open_arr.delete(@upper_end_point)
        puts open_arr.to_s
      else
        puts 'Invalid Range'
      end
  end
end


c = ClosedRange.new("a","y")
# a.Closed_Range
# a.is_valid
c.list_number

# module MyRange
#   def total_numbers(lower_end_point, upper_end_point)
#     puts (love)
#   end
# end


