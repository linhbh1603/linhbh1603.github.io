# dat z= so ziczac
# dat s= so "*"
# khi so so cot = z*(s-1)+1
#


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
	



