# 100/100
def solution(arr)
  arr.sort!

  (0..(arr.size - 3)).each do |i|
    return 1 if arr[i] + arr[i + 1] > arr[i + 2]
  end

  0
end
