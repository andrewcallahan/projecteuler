require 'pp'

array = []
20.times do |num|
  new_array = []
  20.times do
    new_array << 1
  end
  array << new_array
end

pp array


array = [[1]]
pp array[0][0]




# array = []
# 20.times do |num|
#   row = []
#   if num == 0
#     row << 1
#   else
#     if num == 0
#       row << 1
#     else
#       row << "nope"
#     end
#   end
#   array << row
# end
# pp array

array = []
20.times do |num|
  row = []
  if num == 0
    20.times do
      row << 1
    end
  else
    if num == 0
      row << 1
    else
      row << array[num-1][num]
    end
  end
  array << row
end
pp array


# array = []
# 20.times do |row|
#   20.times do |num|
#     if row == 0
#       array[row][num] << 1
#     else
#       array[row][num] = "nope"
#     end
#   end
# end
# pp array

