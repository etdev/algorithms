# http://www.codewars.com/kata/5715eaedb436cf5606000381/
# --- iteration 1 ---
def positive_sum(arr)
  arr.reduce(0) { |acc, el| el > 0 ? acc += el : acc }
end
