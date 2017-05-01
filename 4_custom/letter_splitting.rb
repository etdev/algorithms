# find cheapest way to split up a string made up of chars '1' - '9'
def cheapest_split(str)
  return 0 if str.length < 2

  (1...str.length).map do |split_pt|
    left, right = str[0...split_pt], str[split_pt..-1]

    cheapest_split(left) +
    cheapest_split(right) +
    (left.length * left[-1].to_i) + (right.length * right[0].to_i)
  end.min
end

gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class CheapestSplitTest < Minitest::Test
  def test_single
    expected = 0
    assert_equal expected, cheapest_split("1")
  end

  def test_double
    expected = 3
    assert_equal expected, cheapest_split("12")
  end

  def test_triple
    expected = 10
    assert_equal expected, cheapest_split("123")
  end

  def test_sextuple
    expected = 76
    assert_equal expected, cheapest_split("8129328")
  end
end
