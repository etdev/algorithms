# 100/100
def solution(arr)
  max_so_far = arr.first
  max_here = arr.first

  arr.drop(1).each do |el|
    max_here = [max_here + el, el].max
    max_so_far = [max_so_far, max_here].max
  end

  max_so_far
end
