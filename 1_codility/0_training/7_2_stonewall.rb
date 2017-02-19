# 100/100
def solution(heights)
  total_height = 0
  block_count = 0
  stack = []

  heights.each do |height|
    until total_height == height
      if height < total_height
        popped = stack.pop
        total_height -= popped
      else
        stack.push(height - total_height)
        block_count += 1
        total_height = height
      end
    end
  end

  block_count
end
