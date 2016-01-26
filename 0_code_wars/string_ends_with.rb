# http://www.codewars.com/kata/51f2d1cafc9c0f745c00037d
# --- iteration 1 ---
def solution(str, ending)
  /#{ending}\z/ === str
end

# --- iteration 2 ---
def solution(str, ending)
  str.end_with?(ending)
end

