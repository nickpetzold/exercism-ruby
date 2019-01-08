module RailFenceCipher

	def self.encode(phrase, rails)
		fence_pattern(phrase, rails).zip(phrase.chars).
		sort.
		map { |x| x[1] }.
		join
	end

	def self.decode(phrase, rails)
		fence_pattern(phrase, rails).sort.zip(phrase.chars).
		sort_by { |x| x[0][1] }.
		map { |x| x[1] }.
		join
	end

	def self.fence_pattern(phrase, rails)
		pattern = (0..rails - 1).to_a + (1..rails - 2).to_a.reverse
		pattern.cycle.first(phrase.length).zip(0..phrase.length - 1)
	end

end

p RailFenceCipher.decode('Hi j oe sdI unamrle n gio  nlmLalic Wyioaa ibekean nu,k ycddgm reea onsyi ce', 8)
