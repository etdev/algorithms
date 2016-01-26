# http://www.codewars.com/kata/55685cd7ad70877c23000102
# --- iteration 1 ---
def makeNegative(num)
  num < 0 ? num : -1*num
end

# --- iteration 2 ---
def makeNegative(num)
  -(num.abs)
end

