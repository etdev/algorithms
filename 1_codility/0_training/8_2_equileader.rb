# 100/100
def solution(arr)
  # find the leader for the overall array
  stack = []
  arr.each do |el|
    stack.unshift(el)
    if stack.size > 1 && stack[0] != stack[1]
      stack.shift(2)
    end
  end

  candidate = stack.shift
  total_leader_count = 0

  if candidate
    arr.each do |el|
      total_leader_count += 1 if el == candidate
    end
  end

  return 0 unless total_leader_count > arr.size / 2
  leader = candidate

  # count indexes where leader is fulfilled for left and right
  left_length, right_length = 0, arr.size
  left_leader_count, right_leader_count = 0, total_leader_count

  same_leader_index_count = 0

  (0...(arr.size - 1)).each do |i|
    left_length += 1
    right_length -= 1

    if arr[i] == leader
      left_leader_count += 1
      right_leader_count -= 1
    end

    if (left_leader_count > left_length / 2) && (right_leader_count > right_length / 2)
      same_leader_index_count += 1
    end
  end

  same_leader_index_count
end

=begin
gotchas
* If X is the leader for the overall array, it's the only possible leader for both halves of the array
* Use the technique here: https://codility.com/media/train/6-Leader.pdf with a stack to get the original leader
* Line 39 needs to be outside the if statement on line 34 (I accidentally put it inside on my first attempt)
=end
