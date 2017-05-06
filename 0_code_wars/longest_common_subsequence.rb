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


