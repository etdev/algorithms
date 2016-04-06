# http://www.codewars.com/kata/563b1f55a5f2079dc100008a
# --- iteration 1 ---
def get_larger_numbers(a, b)
  a.zip(b).map(&:max)
end
