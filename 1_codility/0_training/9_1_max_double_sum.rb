# 100/100
def solution(arr)
  length = arr.length
  max_endings, max_startings = [0] * length, [0] * length

  (1..length - 2).each do |i|
    max_endings[i] = [max_endings[i - 1] + arr[i], 0].max
    max_startings[length - 1 - i] = [max_startings[length - 1 - i + 1] + arr[i], 0].max
  end

  (1..length - 2).reduce(0) do |max, i|
    [max_endings[i - 1] + max_startings[i + 1], max].max
  end
end

# 100/100
def solution(arr)
  max_endings, max_startings = [0] * arr.size, [0] * arr.size

  (1..(arr.size) - 2).each do |i|
    max_endings[i] = [max_endings[i - 1] + arr[i], 0].max
    max_startings[arr.size - 1 - i] = [max_startings[arr.size - i] + arr[arr.size - 1 - i], 0].max
  end

  (1..(arr.size) - 2).reduce(0) do |max, i|
    [max_endings[i - 1] + max_startings[i + 1], max].max
  end
end
