# http://www.codewars.com/kata/551b4501ac0447318f0009cd
# --- iteration 1 ---
def boolean_to_string(b)
  return "true" if b
  "false"
end

# --- iteration 2 ---
def boolean_to_string(b)
  b.to_s
end

# --- iteration 3 ---
def boolean_to_string(b)
  b ? "true" : "false"
end

