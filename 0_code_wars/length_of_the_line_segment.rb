# http://www.codewars.com/kata/55f1786c296de4952f000014
# --- iteration 1 ---
def length_of_line(a)
  x1, y1, x2, y2 = a.flatten
  "%.2f" % Math.hypot((x2 - x1), (y2 - y1))
end

