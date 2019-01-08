module Grains

	def self.square(n)
		n.between?(1, 64) ? 2 ** (n-1) : raise ArgumentError.new('Number must be between 1 & 64')
	end

	def self.total
		(1..64).sum { |x| square(x) }
	end

end