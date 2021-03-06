require_relative "./testable"

class MergeSort
  include Testable

  def solution(n)
    merge_sort(n)
  end

  def merge_sort(arr)
    if !arr || arr.empty? || !arr.is_a?(Array)
      return []
    elsif arr.size == 1
      return arr
    end
    mp = arr.length / 2
    left = merge_sort(arr[0...mp])
    right = merge_sort(arr[mp..-1])
    merge(left, right)
  end

  def merge(left, right)
    merged = []
    while (!left.empty? || !right.empty?)
      if left.empty?
        merged = merged.concat(right)
        return merged
      elsif right.empty?
        merged = merged.concat(left)
        return merged
      else
        if left[0] < right[0]
          merged << left.shift
        else
          merged << right.shift
        end
      end
    end
    return merged
  end

  def test_cases
    puts "Setting up test data..."
    test_case_1_thousand = generate_test_case(1000)
    test_case_1_thousand_sorted = test_case_1_thousand.sort

    test_case_1_million = generate_test_case(1_000_000)
    test_case_1_million_sorted = test_case_1_million.sort

    #test_case_5_million = generate_test_case(5_000_000)
    #test_case_5_million_sorted = test_case_5_million.sort

    #test_case_10_million = generate_test_case(10_000_000)
    #test_case_10_million_sorted = test_case_10_million.sort

    #test_case_100_million = generate_test_case(100_000_000)
    #test_case_100_million_sorted = test_case_100_million.sort
    [
      { name: "empty array", in: [], out: [] },
      { name: "nil", in: nil, out: [] },
      { name: "non-array", in: "invalid", out: [] },
      { name: "array with single integer", in: [12000], out: [12000] },
      { name: "array w/ large negative element", in: [5, -20000000000000], out: [-20000000000000, 5] },
      { name: "simple 6-element array", in: [2, 4, 3, 1, 6, 5], out: [1, 2, 3, 4, 5, 6] },
      { name: "1 thousand element array", in: test_case_1_thousand, out: test_case_1_thousand_sorted },
      { name: "1 million element array", in: test_case_1_million, out: test_case_1_million_sorted },
    #  { name: "5 million element array", in: test_case_5_million, out: test_case_5_million_sorted },
      #{ name: "10 million element array", in: test_case_10_million, out: test_case_10_million_sorted },
      #{ name: "100 million element array", in: test_case_100_million, out: test_case_100_million_sorted }
    ]
  end

  def generate_test_case(n)
    ([0] * n).map{ rand(n) }
  end
end

MergeSort.new.test
