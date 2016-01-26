# http://www.codewars.com/kata/52ed326b8df6540e06000029
# --- iteration 1 ---
def goto(l, b)
  [l, b].all? { |x| %w(0 1 2 3).include?(x.to_s) } ? b.to_i - l : 0
end


