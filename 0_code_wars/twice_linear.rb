# attempt 5
def dbl_linear(n)
  x2s, x3s = [], []

  n.times.reduce(1) do |x|
     x2s << (2 * x + 1)
    x3s << (3 * x + 1)
    y = x
    x = [x2s, x3s].min_by(&:first).shift until x != y; x
  end
end

# attempt 4
def dbl_linear(n)
  x, x2s, x3s = 1, [], []

  n.times do
    x2s << (x * 2 + 1)
    x3s << (x * 3 + 1)
    y = x
    x = [x2s, x3s].min_by(&:first).shift until x != y
  end

  x
end

# attempt 3
def dbl_linear(n)
  a = []

  n.times.reduce(1) do |x|
    a.shift until x != a[0]
    y, z = [x*2+1, x*3+1]

    [y, z].each do |b|
      idx = (0...a.size).bsearch{ |i| a[i] > b } || a.size
      a.insert(idx, b)
    end

    a.shift
  end
end

# attempt 2
def dbl_linear(n)
  x, arr = 1, []

  (0...n).each do |i|
    arr.shift until x != arr.first
    y, z = [x * 2 + 1, x * 3 + 1]

    y_insert_pt = (0...arr.size).bsearch{ |i| arr[i] > y } || arr.size
     arr.insert(y_insert_pt, y)

    z_insert_pt = (0...arr.size).bsearch{ |i| arr[i] > z } || arr.size
     arr.insert(z_insert_pt, z)

    x = arr.shift
  end

  x
end

# attempt 1
def dbl_linear(n)
 heap = MinHeap.new
  x = 1
  i = 0
  until i == n
    heap.add(2 * x + 1) if (heap.size) <= n
    heap.add(3 * x + 1) if (heap.size) <= n
    
    until heap.min != x
      heap.remove
    end
    x = heap.min
    heap.remove
    i += 1
  end
  
  x
end

class MinHeap
  attr_reader :elements

  def initialize(elements = [])
    @elements = []
    elements.each do |element|
      add(element)
    end
  end

  def add(n)
    elements << n
    shift_up(elements.size - 1)
  end

  def remove
    el = elements.pop
    return if elements.empty?
    elements[0] = el
    shift_down(0)
  end

  def min
    elements.first
  end

  def size
    elements.size
  end

  private

  def shift_up(i)
    # swap with parent if greater than parent
    return if i == 0
    parent = parent_for(i)
    if elements[i] < elements[parent]
      elements[i], elements[parent] = elements[parent], elements[i]
      return shift_up(parent)
    end
  end

  def shift_down(i)
    return if leaf?(i)
    if right_child(i).nil? || left_child(i) < right_child(i)
      larger_child_idx = left_child_idx(i)
    else
      larger_child_idx = right_child_idx(i)
    end

    if elements[larger_child_idx] < elements[i]
      elements[larger_child_idx], elements[i] = elements[i], elements[larger_child_idx]
      shift_down(larger_child_idx)
    end
  end

  def left_child(i)
    elements[left_child_idx(i)]
  end

  def right_child(i)
    elements[right_child_idx(i)]
  end

  def left_child_idx(i)
    2 * i + 1
  end

  def right_child_idx(i)
    2 * i + 2
  end

  def leaf?(i)
    i >= (elements.size / 2)
  end

  def parent_for(i)
    (i - 1) / 2
  end
end
