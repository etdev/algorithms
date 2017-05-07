def sum_pairs(arr, n)
  seen_val_counts = Hash.new(0)
  arr.each do |a|
    seen_val_counts[a] += 1
  end

  arr.each do |a|
    return true if a == n/2 && seen_val_counts[a] >= 2
    return true if seen_val_counts[n - a] > 0
  end

  false
end

puts sum_pairs([1,2,3,9], 8)
puts sum_pairs([1,2,4,4], 8)
