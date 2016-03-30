# http://www.codewars.com/kata/56f173a35b91399a05000cb7/ 
# --- iteration 1 ---
def find_longest(str)
  str.split.map(&:size).max
end
