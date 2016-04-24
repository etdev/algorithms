# http://www.codewars.com/kata/56786a687e9a88d1cf00005d
# --- iteration 1 ---
def validate_word(word)
  word.downcase!
  word.chars.map{ |chr| word.count(chr) }.uniq.size == 1
end

