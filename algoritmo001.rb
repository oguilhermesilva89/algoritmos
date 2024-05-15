# @param {String} s
# @return {Integer}
def roman_to_int(number_roman)
    roman_numerals = {
      'I' => 1, 
      'V' => 5,
      'X' => 10,
      'L' => 50,
      'C' => 100,
      'D' => 500,
      'M' => 1000  
    }

    total = 0

    previous_value = 0

    number_roman.reverse.each_char do |char|

      value = roman_numerals[char]

      if value < previous_value
        total -= value
      else
        total += value
      end

      previous_value = value
    end

    total
end

puts roman_to_int('XXV')
puts roman_to_int('IV')
puts roman_to_int('MCMLXXXIX')