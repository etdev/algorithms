def solution(k, arr)
  sum, count = 0, 0

  arr.each do |i|
    sum += i
    if sum >= k
      sum = 0
      count += 1
    end
  end

  count
end
