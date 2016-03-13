# http://www.codewars.com/kata/51689e27fe9a00b126000004/
# --- iteration 1 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  return "" if words.empty?
  words.size > 1 ? [words[0...-1].join(", "), words[-1]].join(" and ") : words.first.to_s
end

# --- iteration 2 ---
def format_words(words)
  return "" if words.nil?
  words.reject!(&:empty?)
  [words[0...-1].join(", "), words[-1]].compact.reject(&:empty?).join(" and ")
end
