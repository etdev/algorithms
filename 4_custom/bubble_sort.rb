require_relative "./testable"

class BubbleSort
  include Testable

  def solution(arr)
    return [] unless (arr && arr.is_a?(Array))
    return arr if arr.size < 2
    swapped = true
    until !swapped
      swapped = false
      0.upto(arr.size-2) do |i|
        a, b = arr[i], arr[i+1]
        if b < a
          arr[i], arr[i+1] = b, a
          swapped = true
        end
      end
    end
    arr
  end

  def test_cases
    puts "Setting up test data..."

    test_case_1_hundred = generate_test_case(100)
    test_case_1_hundred_sorted = test_case_1_hundred.sort

    test_case_1_thousand = generate_test_case(1000)
    test_case_1_thousand_sorted = test_case_1_thousand.sort

    test_case_10_thousand = generate_test_case(10_000)
    test_case_10_thousand_sorted = test_case_10_thousand.sort

    [
      { name: "empty array", in: { a: [] }, out: [] },
      { name: "nil", in: { a: nil }, out: [] },
      { name: "non-array", in: { a: "invalid" }, out: [] },
      { name: "array with single integer", in: { a: [12000] }, out: [12000] },
      { name: "array w/ large negative element", in: { a: [5, -20000000000000] }, out: [-20000000000000, 5] },
      { name: "simple 6-element array", in: { a: [2, 4, 3, 1, 6, 5] }, out: [1, 2, 3, 4, 5, 6] },
      { name: "1 hundred element array", in: { a: test_case_1_hundred }, out: test_case_1_hundred_sorted },
      { name: "1 thousand element array", in: { a: test_case_1_thousand }, out: test_case_1_thousand_sorted },
      { name: "10 thousand element array", in: { a: test_case_10_thousand }, out: test_case_10_thousand_sorted }
    ]
  end

  def generate_test_case(n)
    ([0] * n).map{ rand(n) }
  end

end

BubbleSort.new.test
