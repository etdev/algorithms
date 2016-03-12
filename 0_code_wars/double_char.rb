# http://www.codewars.com/kata/56b1f01c247c01db92000076/
# --- iteration 1 ---
def double_char(str)
  str.chars.zip(str.chars).flatten.join
end

# --- iteration 2 ---
def double_char(str)
  str.chars.map{ |x| x * 2 }.join
end

# --- iteration 3 ---
def double_char(str)
  str.gsub(/(.)/, '\1\1')
end

# --- iteration 4 ---
def double_char(str)
  str.gsub(/./, '\0\0')
end
