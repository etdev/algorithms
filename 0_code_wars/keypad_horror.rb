# http://www.codewars.com/kata/5572392fee5b0180480001ae/train/ruby
# --- iteration 1 ---
KEYPAD_MAPPINGS = { "1" => "7", "2" => "8", "3" => "9", "7" => "1", "8" => "2", "9" => "3" }

def computer_to_phone(nums)
  nums.chars.map{ |n| KEYPAD_MAPPINGS[n] || n }.join
end

# --- iteration 2 ---
def computer_to_phone(nums)
  nums.tr("123789", "789123")
end
