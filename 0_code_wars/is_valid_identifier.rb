# http://www.codewars.com/kata/563a8656d52a79f06c00001f/train/
# --- iteration 1 ---
def is_valid(idn)
  return false if idn.size < 1
  return false unless /[a-z_$]/i === idn[0] 
  return false unless idn[1..-1].chars.all? { |n| /[a-z0-9_$]/i === n }
  true
end

# --- iteration 2 ---
def is_valid(idn)
  /\A[a-z_$][a-z0-9_$]*\z/i === idn
end

# --- iteration 3 ---
def is_valid(idn)
  /\A[a-z_$][\w_$]*\z/i === idn
end
