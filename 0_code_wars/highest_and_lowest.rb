# http://www.codewars.com/kata/554b4ac871d6813a03000035
# --- iteration 1 ---
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(" ")
end

