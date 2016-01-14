# http://www.codewars.com/kata/5513795bd3fafb56c200049e/
# --- iterations ---
def count_by(x, n)
  Array.new(n) { |i| (i+1) * x }
end

def count_by(x, n)
  (1..n).map{ |i| i*x }
end

def count_by(x, n)
  x.step(n*x, x).to_a
end

def count_by(x, n)
  x.step(by: x).take(n)
end

def count_by(x, n)
  (1..n).map{ |i| i*x }
end
