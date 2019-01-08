def to_roman(n)

	units = { 
		"1": "I",
		"2": "II",
		"3": "III",
		"4": "IV",
		"5": "V",
		"6": "VI",
		"7": "VII",
		"8": "VIII",
		"9": "IX",
	}

	tens = {
		"1": "X",
		"2": "XX",
		"3": "XXX",
		"4": "XL",
		"5": "L",
		"6": "LX",
		"7": "LXX",
		"8": "LXXX",
		"9": "XC"
	}

	hundreds = {
		"1": "C",
		"2": "CC",
		"3": "CCC",
		"4": "CD",
		"5": "D",
		"6": "DC",
		"7": "DCC",
		"8": "DCCC",
		"9": "CM"
	}

	thousands = {
		"1": "M",
		"2": "MM",
		"3": "MMM"
	}

	lookup = [thousands, hundreds, tens, units]

	n.to_s.each_char.with_index { |x, i| }

end

p lookup