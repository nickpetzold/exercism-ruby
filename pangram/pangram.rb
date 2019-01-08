module Pangram
	def self.pangram?(sentence)
		("a".."z").to_a.all? { |x| sentence.downcase.include?(x) }
	end
end

