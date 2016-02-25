# http://www.codewars.com/kata/565b112d09c1adfdd500019c/
# --- iteration 1 ---
def nth_char(words)
  (0...words.count).map{ |i| words[i][i] }.join
end
