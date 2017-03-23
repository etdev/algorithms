# 100/100
def solution(arr)
  Set.new(arr.map(&:abs)).count
end
