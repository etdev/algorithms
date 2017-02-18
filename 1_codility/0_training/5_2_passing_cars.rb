# naive (100% / 0%)
def solution(arr)
  count = 0
  arr.each_index do |i|
    if arr[i] == 0
      arr[(i + 1)..-1].each_index do |j|
        count += 1 if arr[(i + 1) + j] == 1
        return -1 if count > 1_000_000_000
      end
    end
  end

  count
end

# performant (100% / 100%)
def solution(arr)
  remaining_ones_count = arr.reduce(:+)

  arr.each_index do |i|
    unless arr[i].zero?
      arr[i] = remaining_ones_count
      remaining_ones_count -= 1
    end
  end

  pass_count = 0
  seen_zeros = 0
  arr.each_index do |i|
    if arr[i].zero?
      seen_zeros += 1
    else
      pass_count += (seen_zeros * arr[i])
      seen_zeros = 0
      return -1 if pass_count > 1_000_000_000
    end
  end

  pass_count
end
