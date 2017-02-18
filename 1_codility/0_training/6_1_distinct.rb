# without using a set (100/100)
def solution(arr)
  return 0 if arr.size.zero?
  arr.sort!
  prev = arr[0]

  uniq_arr = arr.drop(1).reduce([prev]) do |acc, el|
    uniq_arr_here = el == prev ? acc : acc << el
    prev = el
    uniq_arr_here
  end

  uniq_arr.size
end

# using set (100/100)
require "set"
def solution(arr)
  Set.new(arr).size
end
