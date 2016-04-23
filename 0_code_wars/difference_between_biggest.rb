# http://www.codewars.com/kata/55e3f27d5dee52d8dd0000a9
# --- iteration 1 ---
def diff_big_2(arr)
  arr.slice!(arr.index(arr.max)) - arr.slice!(arr.index(arr.max))
end

# --- iteration 2 ---
def diff_big_2(arr)
  arr.slice!(arr.index(arr.max)) - arr.max
end

