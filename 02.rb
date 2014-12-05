a = 0
b = 1
temp = 0
total = 0

until b > 4000000 do
	temp = b
	b = b+a
	a = temp

	if b % 2 == 0
		total += b
	end

end

puts total
