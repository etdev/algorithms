def sum_of_max_subarray(arr)
  max_here, max_overall = nil, nil
  arr.each_with_index do |n|
    if max_overall.nil?
      max_here = max_overall = n
    else
      max_here = [max_here + n, n].max
      max_overall = [max_here, max_overall].max
    end
  end
  max_overall
end

puts sum_of_max_subarray([1, 3, -5, 2, 1, 9, -2, 6])
puts sum_of_max_subarray([1])
puts sum_of_max_subarray([-1, -1, 2, -1, 5])
puts sum_of_max_subarray([-9])
