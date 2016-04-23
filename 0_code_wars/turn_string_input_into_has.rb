# http://www.codewars.com/kata/52180ce6f626d55cf8000071
# --- iteration 1 ---
def str_to_hash(str)
  Hash[str.scan(/[a-z]/).map(&:to_sym).zip(str.scan(/\d/).map(&:to_i))]
end

