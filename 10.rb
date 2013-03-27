require 'prime'

# first way is very slow
# array = []
# (1...2000000).each do |num|
#   if num.prime?
#     array << num
#   end
# end

# puts array.reduce{ |sum, n| sum + n }


# looked up prime documentation and found out how to speed this up
array = []
Prime.each(2000000) do |prime|
  array << prime
end

puts array.reduce{ |sum, n| sum + n }