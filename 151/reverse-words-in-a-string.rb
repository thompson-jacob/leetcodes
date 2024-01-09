# @param {String} s
# @return {String}

# First Solution
def reverse_words(s)
  s = s.strip
  s = s.gsub(/ +/, " ") # regex finds any amount of spaces and replaces with a single space
  s = s.split(" ")
  s = s.reverse
  s.join(" ")
end

#Second Solution
def reverse_words(s)
  s.split.reverse.join(" ") #split defaults to removing additional spacing
end

#Third Solution
def reverse_words(s)
  s = remove_excess_ws(s)
  reverse(s, 0, s.size-1)
  
  i = 0
  (0..s.size).each do |j|
      if j == s.size || s[j] == " "
          reverse(s, i, j-1)
          i = j+1
      end
  end
  
  s
end

def reverse(s, i, j)
  while i < j
      s[i], s[j] = s[j], s[i]
      i += 1
      j -= 1
  end
end

def remove_excess_ws(s)
  i = 0
  mid = 0
  (0...s.size).each do |j|
      if s[j] != " "
          s[i] = s[j]
          i += 1
          mid = 0
      elsif i != 0 && mid < 1 # this makes sure we don't add pre white spaces and add only 1 space between words
          s[i] = s[j]
          i += 1
          mid = 1
      end
  end
  # handle last white space
  mid == 0 ? s[...i] : s[...i-1]
end