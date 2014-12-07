require 'prime'

def permutations?(first, second)
  first.to_s.split('').sort == second.to_s.split('').sort
end

(1000..3339).each do |num|
  first = num
  if first.prime?
    second = num + 3330
    if second.prime? && permutations?(first, second)
      third = second + 3330
      if third.prime? && permutations?(second, third)
        if num != 1487
          puts "#{first}#{second}#{third}"
        end
      end
    end
  end
end