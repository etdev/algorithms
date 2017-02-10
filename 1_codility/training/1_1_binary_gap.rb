# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  binary_n = convert_to_binary(n)
  current, longest = 0, 0
  seen_start_one = false
  seen_end_one = false

  binary_n.each_char do |c|
    if c == "0"
      current += 1
      longest = [longest, current].max
    else
      current = 0
    end
  end

  longest
end

def convert_to_binary(n)
  return n.to_s if n < 2

  digits = []
  until n.zero?
    result, rem = n.divmod(2)
    digits.unshift(rem)
    n = result
  end

  digits.join
end
