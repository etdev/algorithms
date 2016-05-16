# http://www.codewars.com/kata/dropcaps/
# --- iteration 1 ---
def drop_cap(str)
  str.gsub(/\w+/) do |word|
    word.size > 2 ? word.capitalize : word
  end
end
