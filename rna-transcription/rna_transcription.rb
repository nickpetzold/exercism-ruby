module Complement
	dna_str = 'ATGC'
	rna_str = 'UACG'
	def self.of_dna
		dna.tr(dna_str, rna_str)
	end
end