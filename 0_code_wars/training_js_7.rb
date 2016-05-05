# http://www.codewars.com/kata/training-js-number-7-if-dot-else-and-ternary-operator
# --- iteration 1 ---
def sale_hotdogs(n)
  return 0 if n == 0
  (100 - (n>4 ? 5 : 0) - (n>9 ? 5 : 0)) * n
end
