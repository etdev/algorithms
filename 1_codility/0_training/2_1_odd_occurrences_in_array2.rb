# 100% 100%
require "set"

def solution(arr)
  odd_elements = Set.new

  arr.each do |i|
    if odd_elements.include?(i)
      odd_elements.delete(i)
    else
      odd_elements.add(i)
    end
  end

  odd_elements.to_a.first
end
