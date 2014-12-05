require 'prime'
prime_factors = {}

(1..20).each do |num|
  num_prime_hash = num.prime_division.to_h
  num_prime_hash.keys.each do |factor|
    prime_factors[factor] = num_prime_hash[factor] if prime_factors[factor].nil? || num_prime_hash[factor] > prime_factors[factor]
  end
end

puts prime_factors
prime_factors.reduce(1) { |memo, (k,v)| memo *= k**v }
