require 'prime'

def sum_of_factors(num)
  array = []

  num.prime_division.map { |arr| arr[1].times{ array << arr[0] } }

  totals = []
  array.size.times do |size|
    totals << array.combination(size).to_a.map{|arr| arr.reduce(:*)}
  end
  totals.flatten.uniq.compact.sort.unshift(1).reduce(:+)
end

sum_array = []
(1..10000).each do |num|
  result = sum_of_factors(num)
  if num == sum_of_factors(result) && num != result
    sum_array << [num, sum_of_factors(num)].sort
  end
end

puts sum_array.select { |x| sum_array.count(x) > 1 }.uniq.flatten.reduce(:+)
