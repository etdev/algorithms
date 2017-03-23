# 100/100
def solution(arr)
  n = arr.length
  count = 0
  arr.sort!

  # for each x
  arr.each_index do |x|
    z = x + 2
    ((x + 1)...n).each do |y|
      while z < n && arr[x] + arr[y] > arr[z]
        z += 1
      end
      count += z - y - 1
    end
  end

  count
end
