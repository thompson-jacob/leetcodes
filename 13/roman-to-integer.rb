# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_values = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
  count = 0
  s.each_char.with_index do |char, i| 
      if roman_values[char].to_i < roman_values[s[i + 1]].to_i
          count -= roman_values[char]
      else
          count += roman_values[char]
      end
  end
  count
end