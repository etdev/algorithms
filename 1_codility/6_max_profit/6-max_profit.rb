def solution(a)
  return 0 if a.size < 2
  return 0 if a.size == 2 && a[1] <= a[0]

  low_so_far = a.first
  max_profit = 0
  # for each price in a
  a.each do |price|
    # set max_profit to price-low_so_far if that difference is greater than the current max_profit
    diff_here = price - low_so_far
    max_profit = diff_here if diff_here > max_profit
    low_so_far = price if price < low_so_far
  end
  max_profit
end
