# http://www.codewars.com/kata/557592fcdfc2220bed000042
# --- iteration 1 ---
def pattern(n)
  return "" if n < 1
  (0...n).map{ |i| (1..n).cycle(2).to_a.drop(i).first(n).join }.join("\n")
end

# --- iteration 2 ---
def pattern(n)
  (0...n).reduce([]) do |acc, i|
    acc << [*1..n].rotate(i).join
  end.join("\n")
end

