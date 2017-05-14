# https://www.codewars.com/kata/52c4dd683bfd3b434c000292/
def is_interesting(num, awesome_phrases)
  return 2 if num.interesting?(awesome_phrases)
  return 1 if [num + 1, num + 2].any?{ |i| i.interesting?(awesome_phrases) }
  0
end

class Integer
  def interesting?(awesome_phrases)
    return false if self < 100
    doubles = to_s.chars.each_cons(2)

    return true if awesome_phrases.include?(self)
    /\A[1-9]0+\z/ === to_s ||
    doubles.all? { |a, b| a == b } ||
    doubles.all? { |a, b| b == (a.to_i - 1).to_s } ||
    doubles.all? { |a, b| b == ((a.to_i + 1) % 10).to_s } ||
    to_s.reverse == to_s
  end
end
