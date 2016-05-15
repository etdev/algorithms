# http://www.codewars.com/kata/56b8903933dbe5831e000c76
# --- iteration 1 ---
def spoonerize(words)
  words = words.split(" ")
  words[1][0], words[0][0] = words[0][0], words[1][0]
  words.join(" ")
end
