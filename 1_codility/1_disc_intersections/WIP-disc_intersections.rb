def solution(a)
  start_vals, end_vals = [], []
  a.each_with_index do |element, i|
    start_vals << (i - element)
    end_vals << (i + element)
  end
  start_vals.sort!
  end_vals.sort!

  end_vals.each do |end_val|
    
  end
end

def intersect?(arr, index_a, index_b)
  min_a, min_b = arr[index_a] - index_a, arr[index_b] - index_b
  #puts "min_a: #{min_a}, min_b: #{min_b}"
  range_a = ((index_a - arr[index_a])..(index_a + arr[index_a])).to_a
  range_b = ((index_b - arr[index_b])..(index_b + arr[index_b])).to_a
  #puts "range_a: #{range_a}, range_b: #{range_b}"
  return true if range_a.include?(min_b) || range_b.include?(min_a)
  false
end 
# test code
=begin
require_relative "./1-disc_intersections.rb"
a = [1, 2, 5, 1, 20]
intersect?(a, 0, 3)
=end
