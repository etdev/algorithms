# http://www.codewars.com/kata/55edaba99da3a9c84000003b
# --- iteration 1 ---
def divisible_by(numbers, divisor)
  numbers.select { |x| x % divisor == 0 }
end

