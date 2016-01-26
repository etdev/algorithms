# http://www.codewars.com/kata/55a75e2d0803fea18f00009d
# --- iteration 1 ---
def find_slope(points)
  return "undefined" if points[2] - points[0] == 0
  "%d" % ((points[3] - points[1]) / (points[2] - points[0]))
end

