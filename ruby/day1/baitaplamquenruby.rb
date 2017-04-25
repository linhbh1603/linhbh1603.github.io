# bai 1

puts "Bai 1"

a = ['Linh', 'Thanh']
name = ''

a.each do |e|
	name += e+', '
end

name.chomp(", !")
puts "Hi " + name+ "! Welcome to Ruby on Rails class."


# bai 2

puts "Bai 2"
puts "nhap mot so nguyen:"

number = gets.to_i
str = number.to_s
len = str.length

puts " so cac chu so cua no la: #{len}"


# bai 3

puts "Bai 3"

puts "nhap vao chieu dai mang 1"

len_arr_1 = gets.to_i
arr_1 = Array.new(len_arr_1)

puts "nhap vao tung phan tu cua mang:"

for i in 0..(len_arr_1-1)
	arr_1[i] = gets.chomp
end

puts "nhap vao chieu dai mang 2"

len_arr_2 = gets.to_i
arr_2 = Array.new(len_arr_2)

puts "nhap vao tung phan tu cua mang:"

for i in 0..(len_arr_2-1)
	arr_2[i] = gets.chomp
end

puts "nhung phan tu trung nhau cua 2 array la:"

for i in 0..(len_arr_1-1) 
	for j in 0..(len_arr_2-1)
		if arr_1[i] == arr_2[j] then
			puts arr_2[j]
		end
	end
end

# bai 4

def reverseSring (s)
	str=''
	arrLen=s.length
	while arrLen>0
		str+=s[arrLen-1]
		arrLen-=1
	end
	return str
end
puts reverseSring(" quyet dep zai")

# bai 5

	puts "Hi! Chao mung den voi Mini Game doan so"
	puts "Nhap mot so bat ky:"
	n=gets.chomp
	puts "con so chinh xac la #{n}"
	puts "So nho hon la #{n.to_i-1}"
	puts "so lon hon la #{n.to_i+1}"

# bai 6

for i in 1..9
	for j in 1..9
		print "#{i*j}"
		print "\t"
		if j==9 
			puts "\n"
		end
	end	
end









