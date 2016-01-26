# http://www.codewars.com/kata/5663f5305102699bad000056
# --- iteration 1 ---
def mxdiflg(a1, a2)
  return -1 if a1.empty? || a2.empty?
  min_max_a1, min_max_a2 = a1.map(&:size).minmax, a2.map(&:size).minmax
  [(min_max_a1.min - min_max_a2.max), (min_max_a1.max - min_max_a2.min)].map(&:abs).max
end

# --- iteration 2 ---
def mxdiflg(a1, a2)
  min_a1, max_a1, min_a2, max_a2 = [a1.map(&:size), a2.map(&:size)].map(&:minmax).flatten
  a1.empty? || a2.empty? ? -1 : [(min_a1 - max_a2), (max_a1 - min_a2)].map(&:abs).max
end

