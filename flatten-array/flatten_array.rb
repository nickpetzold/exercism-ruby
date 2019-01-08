module FlattenArray
	def self.flatten(arr)
		Array.flatten(arr).reject { |x| x.nil? }
	end
end
