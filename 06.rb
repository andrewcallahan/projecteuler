=begin

*** Psudeo Code ***

from 1-100 do each
	number squared
	add that to x

from number 1-100 do each
	add number to y

y^2 - x





*** Get it to work for summing the squares of the first 10 numbers ***
total = 0

(1..10).each do |n|
  n = n**2
  total += n
end

puts total

*** Get it to work for summing squaring the sum of the first 10 numbers ***

total = 0

(1..10).each do |n|
  total += n
end

puts total**2
=end


sum_of_squares = 0
square_of_sum = 0

(1..100).each do |n|
  n = n**2
  sum_of_squares += n
end


(1..100).each do |n|
  square_of_sum += n
end

puts square_of_sum**2 - sum_of_squares
