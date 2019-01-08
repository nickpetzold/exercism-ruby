module CollatzConjecture
	def self.steps(n)
		i = 0	
		if n < 1
			ArgumentError
		elsif n == 1
			0
		else
			while n > 1
				if n.even?
					n /= 2
				else
					n = (3 * n) + 1
				end
				i += 1
			end
		end
		i
	end
end