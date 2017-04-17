def next_bigger(n)
  digits = n.to_s.chars.map(&:to_i)
  m = nil
  (digits.size - 2).downto(0).each do |i|
    if digits[i] < digits[i + 1]
      m = i
      break
    end
  end
  return -1 if m.nil?

  rem_digits = digits[m..-1]

  larger_indexes = []
  rem_digits.each.with_index do |el, i|
    if el > digits[m]
      larger_indexes << i + m
    end
  end
  next_largest_idx = larger_indexes.map{ |x| [x, digits[x]] }.min_by{ |x| x[1] }.first

  digits[m], digits[next_largest_idx] = digits[next_largest_idx], digits[m]
  digits = [*digits[0..m], *digits[(m + 1)..-1].sort]
  digits.join.to_i
end
