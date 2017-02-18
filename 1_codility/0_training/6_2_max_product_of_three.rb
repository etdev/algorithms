# 100/100
def solution(arr)
  sorted_arr = arr.sort
  positive_count = sorted_arr.reduce(0) { |acc, el| el >= 0 ? acc + 1 : acc }

  if positive_count.zero?
    return sorted_arr.last(3).reduce(:*)
  else
    return sorted_arr.last * ([sorted_arr[0] * sorted_arr[1], sorted_arr[-2] * sorted_arr[-3]].max)
  end
end
