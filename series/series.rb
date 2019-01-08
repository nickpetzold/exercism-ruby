class Series
	def initialize(series)
		@series = series
	end

	def slices(n)
		i = -@series.length
		res_arr = []
		while i <= -n
			res_arr << @series[i, n]
			i += 1
		end
		res_arr
	end
end