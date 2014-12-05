# The following iterative sequence is defined for the set of positive integers:

# n  n/2 (n is even)
# n  3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

class Fixnum
  def collatz
    array = []
    array << self
    until array.last == 1 do
      if array.last.odd?
        array << (array.last*3 + 1)
      else
        array << (array.last/2)
      end
    end
    array.count
    # puts "#{self} has #{array.count} numbers in it's sequence"
  end
end

array = []
(1..1000000).each do |number|
  array << number.collatz
end
puts array.index(array.max) + 1

# 837799

def csd
  array = []
  array << self
  until array.last == 1 do
    if array.last.odd?
      array << (array.last*3 + 1)
    else
      array << (array.last/2)
    end
  end
  array.count
  # puts "#{self} has #{array.count} numbers in it's sequence"
end
