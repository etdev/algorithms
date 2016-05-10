# http://www.codewars.com/kata/529adbf7533b761c560004e5/
# --- iteration 1 ---
def fibonacci(n)
  a, b = 1, 1
  (n - 1).times do |i|
    a, b = b, a + b
  end
  a
end

# --- iteration 2 ---
def fibonacci(n, cache = [0,1])
  cache[n] ||= fibonacci(n-1, cache) + fibonacci(n-2, cache)
end
