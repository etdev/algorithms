def max_slice_sum(a)
  # return -1 in case of invalid input
  return -1 unless a.is_a?(Array) && a.size > 0
  # if there's only one element, return it
  return a.first if a.size == 1

  # sum we're currently adding to
  running_sum = 0
  max_so_far = 0

  a.each do |el|
    # max at this element
    max_current = (el + running_sum) > el ? (el + running_sum) : el
    running_sum = max_current > 0 ? max_current : 0
    max_so_far = max_so_far > running_sum ? max_so_far : running_sum
  end

  # deal with the situation where there are no positive elements
  max_so_far == 0 ? a.max : max_so_far
end

