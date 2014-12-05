total = 0

(0..999).each do |n|
  if n % 3 == 0
  	total += n
  elsif n % 5 == 0
  	total += n
  end
end

puts total