# http://www.codewars.com/kata/5264d2b162488dc400000001/
# --- iteration 1 ---
def spinWords(string)
  string.split(" ")
        .reduce([]){ |acc, word| acc << (word.size >= 5 ? word.reverse : word) }
        .join(" ")
end

# --- iteration 2 ---
def spinWords(str)
  str.gsub(/\w+/) { |w| w.size < 5 ? w : w.reverse }
end

# --- iteration 3 ---
def spinWords(str)
  str.gsub(/\w{5,}/, &:reverse)
end
