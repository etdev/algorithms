# http://www.codewars.com/kata/53227465e4d01b5d5200011e
# --- iteration 1 ---
def get_squares(r)
  r.to_a.keep_if{ |x| Math.sqrt(x) % 1 == 0 }.sort.uniq
end

