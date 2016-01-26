# http://www.codewars.com/kata/5467e4d82edf8bbf40000155
# --- iteration 1 ---
def descending_order(n)
  n.to_s.chars.sort.join("").reverse.to_i
end

# --- iteration 2 ---
def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# --- iteration 3 ---
def descending_order(n)
  n.to_s.chars.sort!.reverse!.join.to_i
end

# --- iteration 4 ---
def descending_order(n)
  n.to_s.scan(/./).sort!.reverse!.join.to_i
end

