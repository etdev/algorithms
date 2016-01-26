# http://www.codewars.com/kata/52dbae61ca039685460001ae
# --- iteration 1 ---
CHARS = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
         "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z" ]

def change(a)
  indices = a.chars.map(&:downcase).map do |x|
    CHARS.include?(x) ? CHARS.index(x) : nil
  end.compact
  (1..26).map.with_index { |_, i| indices.include?(i) ? 1 : 0 }.join
end

# --- iteration 2 ---
def change(a)
  ("a".."z").map{ |x| a.downcase.include?(x) ? 1 : 0 }.join
end

