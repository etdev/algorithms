# http://www.codewars.com/kata/557efeb04effce569d000022
# --- iteration 1 ---
def make_acronym(phrase)
  return "Not a string" unless phrase.is_a?(String)
  return "Not letters" unless phrase.downcase.delete("^a-z ").size == phrase.size
  return phrase.split.map{ |word| word[0] }.join.upcase
end

