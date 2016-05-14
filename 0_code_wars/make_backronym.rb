# http://www.codewars.com/kata/55805ab490c73741b7000064/
# --- iteration 1 ---
def make_backronym(string)
  string.upcase.chars.map{ |chr| $dict[chr] }.join(" ")
end
