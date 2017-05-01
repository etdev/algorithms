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

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class MinHeapTest < Minitest::Test
  def test_blank
    expected = []
    assert_equal expected, MinHeap.new.elements
  end

  def test_single_element
    expected = [5]

    min_heap = MinHeap.new
    min_heap.add(5)

    assert_equal expected, min_heap.elements
  end

  def test_add_two_elements_smaller
    expected = [2, 5]

    min_heap = MinHeap.new
    min_heap.add(5)
    min_heap.add(2)

    assert_equal expected, min_heap.elements
  end

  def test_add_two_elements_greater
    expected = [2, 5]

    min_heap = MinHeap.new
    min_heap.add(2)
    min_heap.add(5)

    assert_equal expected, min_heap.elements
  end

  def test_add_in_order_elements
    expected = [1, 2, 3, 4, 5]

    min_heap = MinHeap.new
    min_heap.add(1)
    min_heap.add(2)
    min_heap.add(3)
    min_heap.add(4)
    min_heap.add(5)

    assert_equal expected, min_heap.elements
  end

  def test_remove_single
    expected = [2,3,4,5]

    min_heap = MinHeap.new([5,4,2,1,3])
    min_heap.remove

    assert_equal expected, min_heap.elements
  end

  def test_remove_multiple
    expected = [3,5,4]

    min_heap = MinHeap.new([5,4,2,1,3])
    min_heap.remove
    min_heap.remove

    assert_equal expected, min_heap.elements
  end

  def test_init_array
    expected = [1,2,3,4,5]

    min_heap = MinHeap.new([1,2,3,4,5])

    assert_equal expected, min_heap.elements
  end

  def test_remove_to_empty
    expected = []
    min_heap = MinHeap.new([5])
    min_heap.remove
    assert_equal expected, min_heap.elements
  end

  def test_remove_past_empty
    expected = []
    min_heap = MinHeap.new([])
    min_heap.remove
    assert_equal expected, min_heap.elements
  end
end
