# http://www.codewars.com/kata/55de6173a8fbe814ee000061
# --- iteration 1 ---
def unused_digits(*numbers)
  used_digits = Set.new
  numbers.join("").each_char { |chr| used_digits.add(chr) }
  (("0".."9").to_a - used_digits.to_a).join("")
end

# --- iteration 2 ---
def unused_digits(*digits)
  used_digits = digits.join("").chars.map(&:to_i)
  ((0..9).to_a - used_digits).join("")
end

