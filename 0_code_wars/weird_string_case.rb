# http://www.codewars.com/kata/weird-string-case/
# --- iteration 1 ---
def weirdcase(string)
  string.split(" ").map! do |word|
    word.chars.map.with_index { |char, idx| idx.even? ? char.upcase : char.downcase }.join
  end.join(" ")
end

# --- iteration 2 ---
def weirdcase(string)
  string.gsub(/\w{1,2}/, &:capitalize)
end
