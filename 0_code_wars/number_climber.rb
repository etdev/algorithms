# http://www.codewars.com/kata/559760bae64c31556c00006b
# --- iteration 1 ---
def climb(n)
  nums = [1]
  return nums if n == 1
  addition_units = n.to_s(2)[1..-1].chars.map(&:to_i)
  puts nums.inspect
  addition_units.size.times do |i|
    nums << (nums.last * 2 + addition_units[i])
  end
  puts nums.inspect
  puts "n_binary: #{n.to_s(2)[1..-1]}"
  nums
end

# --- iteration 2 ---
def climb(n)
  nums = [1]
  return nums if n == 1
  addition_digits = n.to_s(2)[1..-1].chars.map(&:to_i)
  addition_digits.each_index do |i|
    nums += [(nums.last * 2 + addition_digits[i])]
  end
  nums
end

# --- iteration 3 ---
def climb(n)
  subseq = []
  until n == 0 do
    subseq.unshift(n)
    n = n/2
  end
  subseq
end

