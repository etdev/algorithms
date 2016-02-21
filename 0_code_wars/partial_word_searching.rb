# http://www.codewars.com/kata/54b81566cd7f51408300022d
# --- iteration 1 ---
def findWord(query, str_arr)
  result = str_arr.map{ |str| str if /#{query}/i === str }.compact
  result.empty? ? ["Empty"] : result
end

# --- iteration 2 ---
def findWord(query, str_arr)
  result = str_arr.grep(/#{query}/i)
  result.empty? ? ["Empty"] : result
end
