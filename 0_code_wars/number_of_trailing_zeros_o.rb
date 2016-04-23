# http://www.codewars.com/kata/52f787eb172a8b4ae1000a34
# --- iteration 1 ---
def zeros(n)
  n >= 5 ? zeros(n/5) + n/5 : 0
end

