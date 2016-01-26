# http://www.codewars.com/kata/54edbc7200b811e956000556
# --- iteration 1 ---
def countSheeps(arr)
  arr.reduce(0) { |acc, el| el == true ? acc + 1 : acc }
end

# --- iteration 2 ---
def countSheeps(arr)
  arr.count(true)
end

# --- iteration 3 ---
def countSheeps(arr)
  arr.reject(&:!).length
end

