# http://www.codewars.com/kata/5418a1dd6d8216e18a0012b2
# --- iteration 1 ---
def validate(num)
  num = num.to_s.chars.map(&:to_i)

  # double every other digit
  if num.length % 2 == 0
    num.map!.with_index do |x, i|
      i % 2 == 0 ? x * 2 : x
    end
  else
    num.map!.with_index do |x, i|
    i % 2 != 0 ? x * 2 : x
    end
  end

  # replace two-digit numbers
  num.map! do |x|
    if x > 9
      x.to_s.chars.map(&:to_i).reduce(&:+) <= 9 ? x.to_s.chars.map(&:to_i).reduce(&:+) : x-9
    else
      x
    end
  end
  num.reduce(&:+) % 10 == 0
end

# --- iteration 2 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    if num.to_s.length % 2 == 0
      el *= 2 if i % 2 == 0
    else
      el *= 2 if i % 2 != 0
    end
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end

# --- iteration 3 ---
def validate(num)
  num.to_s.chars.map(&:to_i).each.with_index.reduce(0) do |acc, (el, i)|
    num.to_s.length % 2 == 0 ? (i % 2 == 0 && el *= 2) : (i % 2 != 0 && el *= 2)
    acc + (el > 9 ? el-9 : el)
  end % 10 == 0
end

