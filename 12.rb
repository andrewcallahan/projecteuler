class Triangle
  attr_accessor :value, :num_of_factors

  def num_of_factors
    count = 0
    (1..(Math.sqrt(self.value))).each do |number|
      if self.value % number == 0
        count += 2
      end
    end
    count
  end

end

@triangle = Triangle.new
goal = 1
array = [1]

until goal > 500
  array << array.last + (array.size + 1)
  @triangle.value = array.last
  # puts "#{@triangle.value} has #{@triangle.num_of_factors} factors"
  goal = @triangle.num_of_factors
end
puts "#{@triangle.value} has #{@triangle.num_of_factors} factors"