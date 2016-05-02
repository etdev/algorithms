# http://www.codewars.com/kata/570a6a46455d08ff8d001002
# --- iteration 1 ---
def no_boring_zeros(num)
  num.to_s[/-?\d*[^0]/].to_i
end

# --- iteration 2 ---
def no_boring_zeros(num)
  num.to_s.gsub(/0+\z/, "").to_i
end

