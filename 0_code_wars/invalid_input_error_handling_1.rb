# http://www.codewars.com/kata/55e6125ad777b540d9000042/
# --- iteration 1
def get_count(words = nil)
  return { "vowels" => 0, "consonants" => 0 } if words.nil? || !words.is_a?(String)
  {
    "vowels" => words.downcase.tr("^aeiou", "").size,
    "consonants" => words.downcase.tr("aeiou., ", "").size
  }
end
