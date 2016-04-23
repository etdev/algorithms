# http://www.codewars.com/kata/51f9543d293a10a7a700004f
# --- iteration 1 ---
def solution(array, key)
  array.sort_by{ |hsh| hsh[key] }
end

