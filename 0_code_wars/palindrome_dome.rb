# https://www.codewars.com/kata/palindrome-for-your-dome/
def palindrome(str)
  str = str&.downcase&.tr("^a-z", "")

  left, right = str.chars.first(str.size / 2), str.chars.last(str.size / 2)

  left.each_with_index do |chr, i|
    return false unless right[-1 - i] == chr
  end

   true
end

def palindrome(str)
  str = str.downcase.tr('^a-z', '')
  str == str.chars.reduce('') { |a, b| b << a }
end
