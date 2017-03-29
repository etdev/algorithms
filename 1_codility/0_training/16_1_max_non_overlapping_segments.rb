# 100/100
def solution(a, b)
  return 0 unless a.size > 0
  i, count = 0, 0
  loop do
    break if i >= a.size
    count += 1
    right = b[i]
    until i >= a.size || a[i] > right
      i += 1
    end
  end
  count
end
