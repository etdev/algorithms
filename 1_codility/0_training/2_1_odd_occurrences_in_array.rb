def solution(arr)
  seen_value_counts = Hasn.new(0)

  arr.each do |i|
    seen_value_counts[i] += 1
  end

  arr.each do |i|
    return i if seen_value_counts[i] % 2 == 1
  end
end
