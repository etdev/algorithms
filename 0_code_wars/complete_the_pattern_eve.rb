# http://www.codewars.com/kata/55749101ae1cf7673800003e
# --- iteration 1 ---
def pattern(n)
  2.step(n, 2)
    .reduce([]){ |acc, el| acc << [el.to_s * el] }
    .join("\n")
end

# --- iteration 2 ---
def pattern(n)
  (2..n).step(2).reduce([]) { |a, e| a << ["#{e}" * e] }.join("\n")
end

