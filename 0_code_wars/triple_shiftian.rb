# http://www.codewars.com/kata/56b7526481290c2ff1000c75/
# --- iteration 1 ---
def triple_shiftian(base, n, memo={})
  if n < 3
    return base[n]
  else
    return_val = (4 * (memo[(n-1)] || triple_shiftian(base, n-1, memo))) \
                 - (5 * (memo[(n-2)] || triple_shiftian(base, n-2, memo))) \
                 + (3 * (memo[(n-3)] || triple_shiftian(base, n-3, memo)))
    memo[n] ||= return_val
    return return_val
  end
end

# --- iteration 2 ---
def triple_shiftian(base, n, memo = {})
  return memo[n] if memo[n]
  return base[n] if n < 3
  memo[n] = 4*triple_shiftian(base, n-1, memo) - 5*triple_shiftian(base, n-2, memo) + 3*triple_shiftian(base, n-3, memo)
end

# --- iteration 3 ---
def triple_shiftian(b, n)
  (3..n).each{ |i| b << 4*b[i-1] - 5*b[i-2] + 3*b[i-3] } and n < 3 ? b[n] : b.last
end
