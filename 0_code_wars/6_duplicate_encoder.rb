# http://www.codewars.com/kata/54b42f9314d9229fd6000d9c/
# --- iteration 1 ---
def duplicate_encode(word)
  char_counts = Hash.new(0)
  word.downcase!
  word.each_char { |chr| char_counts[chr] += 1 }
  word.chars.map{ |chr| char_counts[chr] > 1 ? ")" : "(" }.join
end
