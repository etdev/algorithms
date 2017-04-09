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

# fish
# https://codility.com/programmers/lessons/7-stacks_and_queues/fish/
def fish(a, b)
  stack = []
  dead_count = 0

  a.each_index do |i|
    if b[i] == 1
      stack.push(a[i])
    else
      while stack.any?
        dead_count += 1
        if stack.last < a[i]
          stack.pop
        else
          break
        end
      end
    end
  end

  a.length - dead_count
end

# nesting
# https://codility.com/programmers/lessons/7-stacks_and_queues/nesting/
def nesting_a(str)
  open_count = 0
  str.each_char do |paren|
    return 0 if open_count < 0
    if paren == "("
      open_count += 1
    else
      open_count -= 1
    end
  end
  open_count == 0 ? 1 : 0
end

def nesting_b(str)
  count = str.each_char.reduce(0) do |open_count, paren|
    return 0 if open_count < 0
    open_count + (paren == "(" ? 1 : -1)
  end

  count == 0 ? 1 : 0
end

# stone wall
# https://codility.com/programmers/lessons/7-stacks_and_queues/stone_wall/
def stone_wall(h)
  count, current_height, stack = 0, 0, []

  h.each do |i|
    if current_height < i
      stack.push(i - current_height)
      current_height += stack.last
      count += 1
    elsif current_height > i
      until current_height <= i
        current_height -= stack.pop
      end
      if current_height != i
        stack.push(i - current_height)
        current_height += stack.last
        count += 1
      end
    end
  end

  count
end

# equileader
# https://codility.com/programmers/lessons/8-leader/equi_leader/
def equileader(arr)
  leader, total_leader_count = nil, 0
  counts = Hash.new(0)

  arr.each do |el|
    counts[el.to_s] += 1
    if counts[el.to_s] > arr.length / 2
      leader = el
      break
    end
  end

  return 0 if leader.nil?
  total_leader_count = arr.count(leader)

  equileader_count = 0
  left_count, right_count = 0, total_leader_count

  (0..(arr.length - 2)).each do |i|
    if arr[i] == leader
      left_count += 1
      right_count -= 1
    end
    if left_count > ((i + 1) / 2) && right_count > ((arr.length - (i + 1)) / 2)
      equileader_count += 1
    end
  end

  equileader_count
end

# dominator
# https://codility.com/programmers/lessons/8-leader/dominator/
def dominator(arr)
  stack = []
  arr.each do |el|
    stack.push(el)
    if stack.size >= 2 && stack[-1] != stack[-2]
      stack.pop(2)
    end
  end

  return -1 unless stack.any? && arr.count(stack.last) > (arr.length / 2)
  arr.index(stack.last)
end

# max double slice sum
# https://codility.com/programmers/lessons/9-maximum_slice_problem/max_double_slice_sum/
def max_double_slice_a(arr)
  end_at_maxes = [0] * arr.length
  (1..(arr.size - 2)).each do |i|
    max_here = [end_at_maxes[i - 1] + arr[i], 0].max
    end_at_maxes[i] = max_here
  end

  start_at_maxes = [0] * arr.length
  ((arr.size - 2).downto(1)).each do |i|
    max_here = [start_at_maxes[i + 1] + arr[i], 0].max
    start_at_maxes[i] = max_here
  end

  sums = [0] * arr.length
  (1..(arr.size - 2)).each do |i|
    sums[i] = end_at_maxes[i - 1] + start_at_maxes[ i + 1]
  end

  sums.max
end

def max_double_slice_b(arr)
  n = arr.size
  max_ends, max_starts = [0] * n, [0] * n

  (1..(n - 2)).each do |i|
    max_ends[i] = [max_ends[i - 1] + arr[i], 0].max
    max_starts[n - 1 - i] = [max_starts[n - i] + arr[n - 1 - i], 0].max
  end

  (1..(n - 2)).map { |i| max_ends[i - 1] + max_starts[i + 1] }.max
end

# max slice sum
# https://codility.com/programmers/lessons/9-maximum_slice_problem/max_slice_sum/
def max_slice_sum(arr)
  max_here, max_so_far = arr[0], arr[0]

  arr.drop(1).each do |n|
    max_here = [max_here + n, n].max
    max_so_far = [max_so_far, max_here].max
  end

  max_so_far
end

# max profit
# https://codility.com/programmers/lessons/9-maximum_slice_problem/max_profit/
def max_profit(arr)
  min_here, min_so_far, max_profit = arr[0], arr[0], 0

  arr.each do |price|
    min_here = [min_so_far, price].min
    min_so_far = [min_so_far, min_here].min
    max_profit = [max_profit, price - min_so_far].max
  end

  max_profit
end

# count factors
# https://codility.com/programmers/lessons/10-prime_and_composite_numbers/count_factors/
def count_factors_a(n)
  (1..(Math.sqrt(n))).reduce(0) do |cnt, i|
    if i * i == n
      cnt + 1
    else
      n % i == 0 ? cnt + 2 : cnt
    end
  end
end

def count_factors_b(n)
  factor_count = (1.upto(Math.sqrt(n))).reduce(0) do |cnt, i|
    n % i == 0 ? cnt + 2 : cnt
  end
  factor_count -= 1 if n % (Math.sqrt(n)) == 0
  factor_count
end

# min perimeter
# https://codility.com/programmers/lessons/10-prime_and_composite_numbers/min_perimeter_rectangle
def min_perim(n)
  min_so_far = 2 * (1 + n)

  (2.upto(Math.sqrt(n))).each do |i|
    if n % i == 0
      a, b = i, n / i
      min_so_far = [min_so_far, 2 * (a + b)].min
    end
  end

  min_so_far
end
