module PhoneNumber
	def self.clean(phone_num)
		clean_num = phone_num.gsub(/[^0-9]/,'')
		
		if clean_num.length == 11 && clean_num[0] == "1"
			clean_num = clean_num[1..-1]
		end
		
		if clean_num.length == 10 && !['0','1'].include?(clean_num[0]) && !['0','1'].include?(clean_num[3])
			clean_num
		else
			nil
		end
	
	end
end
