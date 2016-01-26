# http://www.codewars.com/kata/5574940eae1cf7d520000076
# --- iteration 1 ---
def pattern(n)
  [*(1..n)].keep_if(&:odd?).map{ |x| x.to_s * x }.join("\n")
end

# --- iteration 2 ---
def pattern(n)
  1.step(n, 2).map{ |x| x.to_s * x }.join("\n")
end

# --- iteration 3 ---
def pattern(n)
  (1..n).step(2).map{ |i| i.to_s*i }.join("\n")
end




