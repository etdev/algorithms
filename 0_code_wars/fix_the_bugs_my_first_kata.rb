# http://www.codewars.com/kata/56aed32a154d33a1f3000018
# --- iteration 1 ---
def my_first_kata(a,b)
  return false unless a.is_a?(Numeric) && b.is_a?(Numeric)
  a%b + b%a
end
