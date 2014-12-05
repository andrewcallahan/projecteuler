# happened to remember that I needed the prime module
require 'prime'

#looked this up to get ordinalize to work
require 'active_support/core_ext/integer/inflections'

# found this on the internet, to make my output cool
def number_with_delimiter(number, delimiter=",", separator=".")
  begin
    parts = number.to_s.split('.')
    parts[0].gsub!(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1#{delimiter}")
    parts.join separator
  rescue
   number
  end
end

# I need a way to count both the prime number, and which prime number in the sequence of prime numbers it is
prime_count = 0
n = 0

# tried an until loop
until prime_count == 10001
	if n.prime?
		prime_count += 1
	end

	# had to fiddle around with this to make sure my answer wasn't 1 too big at the end
	n += 1 unless prime_count >= 10001
end

puts "The #{number_with_delimiter(prime_count.ordinalize)} prime number is #{n}"