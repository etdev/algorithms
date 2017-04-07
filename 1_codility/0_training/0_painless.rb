# binary gap
# https://codility.com/programmers/lessons/1-iterations/binary_gap/
def binary_gap_a(num)
  num
    .to_binary_str
    .scan(/(?<=1)0+(?=1)/)
    .map(&:length)
    .max || 0
end

class Integer
  def to_binary_str
    digits = []
    num = self
    until num == 0
      num, rem = num.divmod(2)
      digits.unshift(rem)
    end
    digits.join
  end
end

def binary_gap_b(num)
  count, max_count = 0, 0
  counting = false
  digits = num.to_s(2).chars
  digits.each do |digit|
    if digit == "1"
      counting ||= true
      max_count = [count, max_count].max
      count = 0
    else
      count += 1 if counting
    end
  end

  max_count
end

# odd_occurrences_in_array
# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
require "set"
def odd_occurrences_a(arr)
  set = Set.new
  arr.each do |i|
    if set.include?(i)
      set.delete(i)
    else
      set.add(i)
    end
  end
  set.to_a.first
end

def odd_occurrences_b(arr)
  arr.reduce(:^)
end

# cyclic rotation
# https://codility.com/programmers/lessons/2-arrays/cyclic_rotation/
def cyclic_rotation(arr, k)
  return [] unless arr.size >= 1

  k %= arr.size
  k.times do |i|
    arr.unshift(arr.pop)
  end

  arr
end

# frog jump
# https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/
def frog_jump_a(x, y, d)
  distance_to_jump = y - x
  distance_to_jump.fdiv(d).ceil
end

def frog_jump_b(x, y, d)
  (y - x + (d - 1)) / d
end

# tape equilibrium
# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/
def tape_equil(arr)
  total = arr.reduce(:+)
  left_sum, min_sum = 0, 2000

  (1...arr.size).each do |i|
    left_sum += arr[i - 1]
    min_sum = [(2 * left_sum - total).abs, min_sum].min
  end

  min_sum
end

# missing integer
# https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
require "set"
def missing_int(arr)
  set = Set.new(arr)
  (1..100_000).each do |i|
    return i unless set.include?(i)
  end
  100_001
end

# perm check
# https://codility.com/programmers/lessons/4-counting_elements/perm_check/
require "set"
def perm_check(arr)
  set = Set.new(arr)
  (1..arr.size).all?{ |i| set.include?(i) } ? 1 : 0
end

# frog river one
# https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/
require "set"
def frog_river_one(x, arr)
  set = Set.new(1..x)
  arr.each_index do |i|
    set.delete(arr[i])
    return i if set.empty?
  end
  -1
end

# count div
# https://codility.com/programmers/lessons/5-prefix_sums/count_div/
def count_div(a, b, k)
  b / k - (a - 1) / k
end

# passing cars
# https://codility.com/programmers/lessons/5-prefix_sums/passing_cars/
def passing_cars(arr)
  seen_zeros, passes = 0, 0

  arr.each do |i|
    if i == 0
      seen_zeros += 1
    else
      passes += seen_zeros
    end
    return -1 if passes > 1_000_000_000
  end

  passes
end

# distinct
# https://codility.com/programmers/lessons/6-sorting/distinct/
require "set"
def distinct_a(arr)
  Set.new(arr).count
end

def distinct_b(arr)
return arr.size if arr.size < 2

  arr.sort!
  count = 1

  (1...arr.size).each do |i|
    count += 1 if arr[i] != arr[i - 1]
  end

  count
end

def distinct_c(arr)
  return arr.size if arr.size < 2
  arr.sort!

  (1...arr.size).reduce(1) do |count, i|
    arr[i] == arr[i - 1] ? count : count + 1
  end
end

# max product of three
# https://codility.com/programmers/lessons/6-sorting/max_product_of_three/
def max_of_three(arr)
  arr.sort!
  neg_count = arr.count{ |i| i < 0 }

  if neg_count < 2
    arr.last(3).reduce(:*)
  else
    [arr[0] * arr[1] * arr[-1], arr.last(3).reduce(:*)].max
  end
end

# triangle
# https://codility.com/programmers/lessons/6-sorting/triangle/
def triangle(arr)
  return 0 unless arr.size > 2
  arr.sort!

  (0..(arr.size - 3)).each do |i|
    return 1 if arr[i] + arr[i + 1] > arr[i + 2]
  end

  0
end

# brackets
# https://codility.com/programmers/lessons/7-stacks_and_queues/brackets/
def brackets(str)
  stack = []
  mappings = {
    "]" => "[",
    "}" => "{",
    ")" => "("
  }

  close_brackets = mappings.keys

  str.each_char do |bracket|
    if close_brackets.include?(bracket)
      return 0 unless stack.last == mappings[bracket]
      stack.pop
    else
      stack.push(bracket)
    end
  end

  stack.empty? ? 1 : 0
end
