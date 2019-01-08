class Phrase

	def initialize(phrase)
		@phrase = phrase
	end

	
	def word_count
		freq = Hash.new(0)
		@phrase.downcase.scan(/\b[\w']+\b/).each do |x| 
			freq[x] += 1
		end

		freq

	end
end