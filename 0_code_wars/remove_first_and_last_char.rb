# http://www.codewars.com/kata/570597e258b58f6edc00230d
# --- iteration 1 ---
def array(str)
  nums = str.split(",")
  return if nums.count < 3
  nums[1..-2].join(" ")
end

