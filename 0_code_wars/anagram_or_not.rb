# http://www.codewars.com/kata/546274b0eaa31f79c9000d5d
# --- iteration 1 ---
def isAnagram(test, orig)
  test_cleaned, orig_cleaned = [test, orig].map do |s|
    s.downcase.delete("^a-z0-9").chars.sort.join
  end
  test_cleaned == orig_cleaned
end

