# 100/100
def solution(str)
  char_mappings = {
    "}" => "{",
    "]" => "[",
    ")" => "("
  }

  stack = []

  str.each_char do |chr|
    if char_mappings.values.include?(chr)
      stack.unshift(chr)
    else
      return 0 unless stack.shift == char_mappings[chr]
    end
  end

  stack.empty? ? 1 : 0
end
