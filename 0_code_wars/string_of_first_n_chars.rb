# http://www.codewars.com/kata/5639bdcef2f9b06ce800005b/
# --- iteration 2 ---
def make_string(s)
  s.split.reduce(""){ |acc, el| acc << el[0] }
end

# --- iteration 2 ---
def make_string(s)
  s.split.map(&:chr).join
end
