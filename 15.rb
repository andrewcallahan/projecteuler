# Make a grid that is one bigger in each direction, since you start at (0,0) and need to go to (20,20)
a = Array.new(21) { Array.new(21) { 1 } }

#This starts with the second to last cell in the second to last row, and then goes all the way to the first item (basically, reverse order of array skipping the last item)
order = (-a.size..-2).to_a.reverse

#Iterate through the array starting with the second to last item in the second to last array
#Add the values of the options to the right and below to the cell, and move on
order.each do |num|
  order.each do |sec_num|
    a[num][sec_num] = a[num][sec_num+1] + a[num + 1][sec_num]
  end
end

#This bubbles up until you get the number of paths total in the first cell
puts a[0][0]
