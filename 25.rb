require 'pry'
array = [1,1]
while array.last.to_s.split('').size < 1000
  array << array[-1] + array [-2]
end

puts array.size
