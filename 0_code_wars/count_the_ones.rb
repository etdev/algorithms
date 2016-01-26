# http://www.codewars.com/kata/5519e930cd82ff8a9a000216
# --- iteration 1 ---
def hamming_weight(x)
  x.to_s(2).delete("0").length
end

# --- iteration 2 ---
def hamming_weight(x)
  return x if x < 2
  x % 2 + hamming_weight(x / 2)
end

