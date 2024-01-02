def is_palindrome(x)
  x.to_s == x.to_s.reverse 
  # x >= 0 && x.digits.join.to_i == x Without converting to string
end