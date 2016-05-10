# http://www.codewars.com/kata/split-the-bill/
# --- iteration 1 ---
def split_the_bill(x)
  avg = (x.values.reduce(:+)).fdiv(x.keys.size)
  x.each { |k, v| x[k] = (v - avg).round(2) }
end
