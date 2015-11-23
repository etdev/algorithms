# http://www.codewars.com/kata/iq-test/
# --- iteration 1 ---
def iq_test(numbers)
  numbers = numbers.split(" ").map(&:to_i)
  odd_count, even_count = 0, 0
  first_odd, first_even = nil, nil

  numbers.each_with_index do |num, idx|
    if num.even?
      even_count += 1
      first_even ||= num
    else
      odd_count += 1
      first_odd ||= num
    end
    return numbers.index(first_odd) + 1 if (odd_count == 1 && even_count > 1)
    return numbers.index(first_even) + 1 if (odd_count > 1 && even_count == 1)
  end
  1
end

# --- iteration 2 ---
def iq_test(nums)
  nums = nums.split.map(&:to_i).map(&:even?)
  (nums.count(true) > 1 ? nums.index(false) : nums.index(true)) + 1
end
