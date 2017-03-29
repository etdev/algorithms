# 100/100
def solution(m, arr)
  found = [-1] * (m + 1)
  left_idx, count, n = -1, 0, arr.size

  (0...n).each do |right_idx|
    if found[arr[right_idx]] > left_idx
      left_idx = found[arr[right_idx]]
    end

    count += (right_idx - left_idx)
    return 1_000_000_000 if count > 1_000_000_000
    found[arr[right_idx]] = right_idx
  end

  count
end
