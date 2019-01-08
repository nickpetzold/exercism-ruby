class Squares

	def initialize(n)
		@numbers = (0..n).to_a
	end

	def square_of_sum
		@numbers.sum ** 2
	end

	def sum_of_squares
		@numbers.sum { |x| x ** 2 }
	end

	def difference
		square_of_sum - sum_of_squares
	end
	
end