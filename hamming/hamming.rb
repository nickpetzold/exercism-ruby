module Hamming
	def self.compute(dna1, dna2)
		raise ArgumentError.new('Strings must be same length') if dna1.length != dna2.length
		0.upto(dna1.length - 1).count { |x| dna1[x] != dna2[x] }
	end
end