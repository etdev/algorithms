# http://www.codewars.com/kata/5624e574ec6034c3a20000e6
# --- iteration 1 ---
def hamming_distance(a,b)
  a, b = a.chars, b.chars
  a.zip(b).reduce(0) { |acc, el| el[0] == el[1] ? acc : acc + 1 }
end

# --- iteration 2 ---
def hamming_distance(a,b)
  a, b = [a, b].map(&:chars)
  a.each_index.reduce(0){ |acc, i| a[i] == b[i] ? acc : acc + 1 }
end

