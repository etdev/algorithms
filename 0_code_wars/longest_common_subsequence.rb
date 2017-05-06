# https://www.codewars.com/kata/52756e5ad454534f220001ef/
# basic recursion
def lcs(a, b)
  return "" if a.empty? || b.empty?
  if a[-1] == b[-1]
    lcs(a[0..-2], b[0..-2]) + a[-1]
  else
    [lcs(a[0..-2], b), lcs(a, b[0..-2])].max_by(&:length)
  end
end

# memoized DP
def lcs(x, y)
  m = Array.new(x.size + 1) { Array.new(y.size + 1) { String.new } }

  (1..x.size).each do |i|
    (1..y.size).each do |j|
      m[i][j] = x[i-1] == y[j-1] ? m[i-1][j-1] + x[i - 1] : [m[i-1][j], m[i][j-1]].max_by(&:size)
    end
  end

  m[x.size][y.size]
end
