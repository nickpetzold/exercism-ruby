class Integer
  def to_roman
    number = self
    numeral_array = %w[M CM D CD C XC L XL X IX V IV I]
    int_array = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    numeral_string = ''
    numeral_array.each_with_index do |num, index|
      while number >= int_array[index]
        numeral_string += num
        number -= int_array[index]
      end
    end
    numeral_string
  end
end
