# http://www.codewars.com/kata/52f3149496de55aded000410
# --- iteration 1 ---
def sumDigits(number)
  number.to_s.chars.map(&:to_i).map(&:abs).reduce(&:+)
end

# --- iteration 2 ---
def sumDigits(number)
  number.abs.to_s.chars.map(&:to_i).reduce(&:+)
end

