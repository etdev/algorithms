# http://www.codewars.com/kata/558fa34727c2d274c10000ae
# --- iteration 1 ---
#preloaded variable: "$dict"

def scrabble_score(str)
  str = str.upcase.delete("^A-Z")
  return 0 if str.nil? || str.empty?
  str.chars.map{ |chr| $dict[chr] }.reduce(:+)
end

# --- iteration 2 ---
def scrabble_score(str)
  str.upcase.chars.reduce(0) { |acc, chr| acc + $dict.fetch(chr, 0) }
end

