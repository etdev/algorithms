def solution(arr)
  stack = []
  arr.each do |i|
    stack.unshift(i)
    stack.shift(2) if stack.size > 1 && stack[0] != stack[1]
  end

  candidate = stack.shift

  if candidate
    count = arr.reduce(0) do |acc, el|
      el == candidate ? acc + 1 : acc
    end

    return arr.index(candidate) if count > arr.size / 2
  end

  -1
end
