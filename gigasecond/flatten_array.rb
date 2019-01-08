module FlattenArray
	def self.flatten(arr)
		arr.Array.flatten.reject { |x| x.nil? }
	end
end