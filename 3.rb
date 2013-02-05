target = 600851475143
x = 2
largest_prime = 0

require 'prime'

while x < 600851475143 do
	if x.prime?
		if target % x == 0
			target = target/x
			largest_prime = x
			x += 1
		else
			x += 1
		end
	else
		x += 1
	end
	puts "x is: #{x}"
	puts "target is: #{target}"
	puts "largest prime is: #{largest_prime}"
end

puts largest_prime

