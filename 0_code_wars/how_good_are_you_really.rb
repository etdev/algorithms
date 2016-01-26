# http://www.codewars.com/kata/5601409514fc93442500010b
# --- iteration 1 ---
def better_than_average(arr, points)
  (arr << points).reduce(0){ |acc, el| acc + el.fdiv(arr.size) } <= points
end

