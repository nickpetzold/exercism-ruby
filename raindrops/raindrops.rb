module Raindrops
	def self.convert(num)
		message = ''
		message += 'Pling' if num % 3 == 0
		message += 'Plang' if num % 5 == 0
		message += 'Plong' if num % 7 == 0
		message == '' ? num.to_s : message
	end
end