# http://www.codewars.com/kata/5168bb5dfe9a00b126000018
# --- iteration 1 ---
def solution(str)
  str.each_char.with_index.to_a
  .sort_by{ |chr, i| -i }
  .map(&:first).join
end

