class SpaceAge

	def initialize(age)
		@age = age
	end

	{
		earth: 1.0,
		mercury: 0.2408467,
		venus: 0.61519726,
		mars: 1.8808158,
		jupiter: 11.862615,
		saturn: 29.447498,
		uranus: 84.016846,
		neptune: 164.79132
	}.each do |planet, earth_years|
		define_method(:"on_#{planet}") do
			@age / (earth_years * 31557600.0)
		end
	end

end