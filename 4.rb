=begin
x = 10000
y = 999


while x < 10001 do
if x.to_s == x.to_s.reverse
	if x % y = 0
		if x/y > 100
			puts "We got it! It is #{x}"
		else
			
			if x <= 0
				return
			else
				x = x - 1
			end
		end
	else
		if x <= 0
			return
		else
			x = x - 1
		end
	end
else
	if x <= 0
		return
	else
		x = x - 1
	end
end
end
=end

biggest = 0

(100..999).each do |x|
	(x..999).each do |y|
		#puts x*y
		if (x*y).to_s == (x*y).to_s.reverse
			if x*y > biggest
				biggest = x*y
			end
		end
	end
end
puts biggest


=begin
test = []
x = 10
(x..99).each do |n|
	test << n*x
		y = n
			(y..99).each do |n|
				test << n*y
			end
	end

test.sort
puts test
=end




