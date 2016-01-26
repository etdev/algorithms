# http://www.codewars.com/kata/5601c5f6ba804403c7000004
# --- iteration 1 ---
def bar_triang(p1,p2,p3)
  [p1, p2, p3].reduce([0, 0]) { |acc, el|  [acc[0] + el[0], acc[1] + el[1]] }
  .map{ |x| x.fdiv(3).round(4) }
end

