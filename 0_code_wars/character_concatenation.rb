# http://www.codewars.com/kata/character-concatenation/discuss/ruby

# --- iteration 1 ---
def char_concat(word)
  return "" if word.size < 2
  word_size_orig = word.size
  word.slice!(word.size/2) if word.size.odd?
  left, right = word.slice!(0...word.size/2), word
  left.chars.zip(right.chars.reverse).zip(1..word_size_orig/2).join
end

# --- iteration 2 ---
def char_concat(str)
  (1..str.size/2).reduce(""){ |a, n| a << str[n-1] << str[-n] << n.to_s }
end
