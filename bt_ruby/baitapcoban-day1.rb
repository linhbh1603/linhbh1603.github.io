#Bai 1

def bai1
	puts "nhap vao so dau tien:"
	a = gets.to_i
	puts "nhap vao so thu hai:"
	b = gets.to_i
	puts "Tong hai so la: #{a+b}"
	puts "Tich cua hai so la: #{a*b}"
	if a>b
		puts "#{a} la so lon hon"		
	else
		puts "#{b} la so lon hon"
	end
	if (a%b==0||b%a==0)
		puts "co la boi so cua nhau"
	else
		puts " khong la boi so cua nhau"
	end
end

puts "bai 1"

bai1

#bai 2

def tam_giac
	puts "nhap vao canh dau tien:"
	a = gets.to_i
	puts "nhap vao canh thu hai:"
	b = gets.to_i
	puts "nhap vao canh thu ba:"
	c = gets.to_i
	if( a>0 && b>0 && c>0 && a+b>c && b+c>a && c+a>b)
		puts "#{a}, #{b}, #{c} la do dai 3 canh cua tam giac:"
		puts " chu vi: #{a+b+c}"
		p=(a+b+c)*0.5
		s=Math.sqrt(p*(p-a)*(p-b)*(p-c))
		puts "dien tich: #{s}"
	else
		puts "#{a}, #{b}, #{c} khong la do dai ba canh mot tam giac"
		if ( a==0 || b==0 || c==0 )
			puts " vi co canh bang 0"
		else
			puts " Vi khong thoa man bat dang thuc tam giac"
		end
	end
end

puts "\n bai 2"

tam_giac

# bai 3

def f_to_c
	puts "nhap vao nhiet do F:"
	f = gets.to_i
	puts "nhiet do theo do C la: #{(f-32)/1.8}"
end

puts "\n bai3"

f_to_c

#bai 4

def c_to_f
	puts "nhap vao nhiet do C:"
	c = gets.to_i
	puts "nhiet do theo do F la: #{c*1.8+32}"
end

puts "\n bai4"

c_to_f

#bai 5

def kiem_tra
	puts "nhap vao mot ky tu:"
	kt = gets.chomp
	if ( kt >= "a" && kt <= "z")
		puts "#{kt} la mot ky tu anphabe"
	else
		puts "#{kt} khong phai ky tu anphabe"
	end
end

puts "\n bai 5 \n"

kiem_tra

# bai 6
puts "nhap vao mot so nguyen duong:"
a = gets.chomp.to_f

def so_nguyen_to(p) 
	puts "#{p} khong la mot so nguyen duong" unless ( p.is_a? Integer)
	pri=true
	x=Math.sqrt(p)
	x=(x-1)*0.5
	if p>3
		if( p%2==0 )
			pri=false
		else 
			for i in 1..x	
				if p%(2*i+1) == 0
					pri=false
				end
			end
		end
	end
	if pri
		puts "#{p} la mot so nguyen to"
	else
		puts "#{p} khong la so nguyen to"
	end
end	

so_nguyen_to(a)

# bai 7

def trung_binh
	puts "nhap diem ly:"
	ly=gets.chomp.to_f
	puts "nhap diem hoa:"
	hoa=gets.chomp.to_f
	puts "nhap diem sinh:"
	sinh=gets.chomp.to_f
	puts "nhap diem toan:"
	toan=gets.chomp.to_f
	puts "nhap diem khoa hoc may tinh:"
	khmt=gets.chomp.to_f
	tb=(ly+hoa+sinh+toan+khmt)/5.0
		
	if (tb>=0 && tb<5)
		puts "E"
	elsif (tb>=5 && tb<6)
		puts "?"
	elsif (tb>=6 && tb<7)
		puts "D"
	elsif (tb>=7 && tb<8)
		puts "C"
	elsif (tb>=8 && tb<=9)
		puts "B"
	else 
		puts "A"
	end
end

trung_binh

#bai 8

def in_n
	puts "nhap n"
	n=gets.chomp.to_i
	puts "nhap n la so nguyen duong" unless n>0
		for i in 1..n
			puts n+1-i
		end
end

in_n

# bai 9

def bo_pt_trung_nhau (a)
	l=a.length
	arrNew=0
	b=[]
	c=[]
	for i in 0..(l-1)
		b[i]=0
	end
	for i in 0..( l-2 )
		for j in (i+1)..(l-1)
			if a[i]==a[j]
				b[i]=1
				b[j]=1				
			end	
		end
	end
	for i in 0..(l-1)
		if b[i]==0
			c[arrNew] = a[i]
			arrNew+=1
		end
	end
	puts c
end

bo_pt_trung_nhau ([1,2,3,4,1,2,5,12,13,"linh","linh","quyet",6,7,5])

# bai 10

def phan_tich_uoc_nguyen_to (n)
	i=2
	arr=[]
	len=0
	while n>1
		if n%i == 0
			arr[len] = i
			n /= i
			len++
		else
			i++
		end
	end
	puts arr
end

phan_tich_uoc_nguyen_to(28)


# bai 11


def in_tam_giac( n )
	row=1
	for i in 1..n
		for j in 1..row
			print j
			if j==row 
				print "\n"
			end
		end
		row+=1
	end
end
puts "nhap mot so tu nhien tu 1-10:"
a=gets.chomp.to_i

if a>=1 && a<=10
	in_tam_giac(a)
else
	puts "nhap mot so tu 1-10"
end


# bai 12

def tam_giac_nguoc (n)
	row=n
	space=" "
	for i in 1..n
		for j in 0..row+1
			if j==0
				print "#{space}"
			elsif j==row+1
				print "\n"
			else
				print "#{row}"
			end
		end
		row-=2
		space+=" "
	end
end

puts "nhap n"
x=gets.chomp.to_i

if x%2==1 && x>=1 && x<=9
	tam_giac_nguoc(x)
else
	puts " hay nhap mot so le tu 1-9"
end


# bai 12+1

def ucln(a,b)
	if a>b
		r = a%b
		while r != 0
			a = b
			b = r 
			r = a%b
		end
		puts b
	else
		r = b%a
		while r != 0
			b = a
			a = r 
			r = b%a
		end
		puts a
	end
end

puts "nhap so tu nhien a"
x=gets.chomp.to_i
puts " nhap so tu nhien b"
y=gets.chomp.to_i
puts "uoc chung lon nhat cua #{x} va #{y} la:"
ucln(x,y)
	
# bai 12+2

# bai 12+3

def zic_zac(s,z)
	for i in 1..s
		for j in 1..(z*(s-1)+1)
			if i==1 && j%(2*(s-1)) == s%(2*(s-1))
				print "*"
				if j==z*(s-1)+1
					print "\n"
				end
			elsif i==s && j%(2*(s-1)) == 1
				print "*"
				if j==z*(s-1)+1
					print "\n"
				end				
			elsif j%(2*(s-1))==(s-(i-1))%(2*(s-1)) || j%(2*(s-1))==(s+(i-1))%(2*(s-1))
				print "*"
			else
				print " "
				if j==z*(s-1)+1
					print "\n"
				end
			end
		end
	end
end

puts "nhap so dau sao '*':"
sao=gets.chomp.to_i
puts " nhap so zic-zac"
zzac=gets.chomp.to_i
zic_zac(sao,zzac)








