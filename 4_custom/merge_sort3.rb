require_relative "./testable"

class MergeSort
  include Testable

  def solution(n)
    merge_sort(n)
  end

  def merge_sort(arr)
    return [] unless arr.is_a?(Array)
    return arr if arr.size < 2
    mp = arr.size/2
    left = arr[0...mp]
    right = arr[mp...arr.size]
    merge(merge_sort(left), merge_sort(right))
  end

  def merge(left, right)
    merged = []
    until (left.empty? || right.empty?)
      if left.first < right.first
        merged << left.shift
      else
        merged << right.shift
      end
    end
    return merged.concat(left).concat(right)
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
