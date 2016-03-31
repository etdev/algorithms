# http://www.codewars.com/kata/56eff1e64794404a720002d2/
# --- iteration 1 ---
def testit(s)
  s.downcase.delete("^word").scan(/w[word]?o[word]?r[word]?d/).count
end

# --- iteration 2 ---
def testit(s)
  s.scan(/w.*?o.*?r.*?d/i).size
end
