# http://www.codewars.com/kata/56e3cd1d93c3d940e50006a4/
# --- iteration 1 ---
def make_valley(arr)
  arr = arr.sort.reverse
  left, right = [], []
  arr.each_slice(2).each do |el|
    left << el[0]
    right << el[1]
  end
  left, right = left.compact, right.compact
  left + right.reverse
end
