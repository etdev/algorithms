# http://www.codewars.com/kata/55c423ecf847fbcba100002b
# --- iteration 1 ---
def filter_words(phrase)
  return phrase.gsub(/(bad|mean|ugly|horrible|hideous)/i,"awesome")
end

