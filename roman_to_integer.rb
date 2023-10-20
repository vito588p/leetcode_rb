# Roman to Integer

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000

# Example 1:
# Input: s = "III"
# Output: 3
# Explanation: III = 3.

# Example 2:
# Input: s = "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.

# Example 3:
# Input: s = "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

def roman_to_int(roman)
  mapping = {
  "I" => 1,
  "V" => 5,
  "X" => 10,
  "L" => 50,
  "C" => 100,
  "D" => 500,
  "M" => 1000
  }
  
  sum = 0

  roman.split("").each_with_index do |char, index|
      value = mapping[char]
      next_char = roman[index+1]
      if next_char && mapping[next_char] > value
          sum -= value
      else 
          sum += value
      end
  end
  sum
end

puts roman_to_int("III")     # 3
puts roman_to_int("LVIII")   # 58
puts roman_to_int("MCMXCIV") # 1994