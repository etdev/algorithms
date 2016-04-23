# http://www.codewars.com/kata/541da001259d9ca85d000688
# --- iteration 1 ---
def seqlist(f,c,l)
  [*f.step(f + (l - 1) * c, c)]
end

# --- iteration 2 ---
def seqlist(f,c,l)
  Array.new(l){ |i| f + i*c }
end

# --- iteration 3 ---
def seqlist(f,c,l)
  f.step(by: c).first(l)
end

