# http://www.codewars.com/kata/55f2b110f61eb01779000053
# --- iteration 1 ---
def get_sum(a,b)
  return a if a == b
  ([a,b].min..[a,b].max).reduce(&:+)
end

# --- iteration 2 ---
def get_sum(a,b)
  a == b ? a : Range.new(*[a,b].sort).reduce(&:+)
end

# --- iteration 3 ---
def get_sum(a,b)
  Range.new(*[a,b].sort).reduce(&:+)
end

