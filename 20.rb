puts (1..100).reduce(:*).to_s.split("").map{ |x| x.to_i }.reduce(:+)
