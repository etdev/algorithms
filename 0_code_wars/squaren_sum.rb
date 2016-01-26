# http://www.codewars.com/kata/515e271a311df0350d00000f
# --- iteration 1 ---
def squareSum(numbers)
  numbers.inject { |sum, x| sum += x ** 2 }
end

