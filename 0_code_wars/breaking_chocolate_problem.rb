# http://www.codewars.com/kata/534ea96ebb17181947000ada
# --- iteration 1 ---
def break_chocolate(n, m)
  n*m >= 1 ? n*m - 1 : 0
end

# --- iteration 2 ---
def break_chocolate(n, m)
  [n * m - 1, 0].max
end

