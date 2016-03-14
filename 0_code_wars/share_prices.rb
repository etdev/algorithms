# http://www.codewars.com/kata/5603a4dd3d96ef798f000068/
# --- iteration 1 ---
def share_price(invested, changes)
  "%.2f" % changes.reduce(invested) { |acc, el| acc += (acc * el.fdiv(100)) }
end
