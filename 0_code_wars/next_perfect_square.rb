# http://www.codewars.com/kata/56269eb78ad2e4ced1000013/

# --- iteration 1 ---
def find_next_square(sq)
  sqr_root = Math.sqrt(sq)
  sqr_root % 1 == 0 ? (sqr_root + 1) ** 2 : -1
end
