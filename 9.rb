# first find all combos of a+b+c=1000 where a<b<c
# the bounds are

# a = 1
# b = 2
# c = 997

# and

# a = 332
# b = 333
# c = 335



(1..332).each do |a|
  ((a+1)..499).each do |b|
    c = 1000 - a - b
    if c > b
  if ((a**2) + (b**2)) == c**2
    puts "#{a} + #{b} + #{c} = #{a+b+c}"
    puts "#{a**2} + #{b**2} = #{c**2}"
    puts "#{a**2 + b**2} = #{c**2}"
    puts a*b*c
  end
  end
end
end
