# http://www.codewars.com/kata/554dc2b88fbafd2e95000125
# --- iteration 1 ---
def vector_length(vector)
  x1, y1, x2, y2 = vector.flatten.map(&:to_f)
  Math.sqrt(((x2 - x1) ** 2) + ((y2 - y1) ** 2))
end

