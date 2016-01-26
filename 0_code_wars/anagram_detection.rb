# http://www.codewars.com/kata/529eef7a9194e0cbc1000255
# --- iteration 1 ---
def is_anagram(test, original)
  test.downcase.chars.sort == original.downcase.chars.sort
end

