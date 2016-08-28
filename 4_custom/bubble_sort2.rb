require_relative "./testable"

class BubbleSort
  include Testable
  attr_reader :test_cases

  def solution(arr)
    return [] unless arr && arr.is_a?(Array)
    return arr unless arr.size > 1
    loop do
      swapped = false
      (1...arr.size).each do |i|
        if arr[i] < arr[i-1]
          arr[i-1], arr[i] = arr[i], arr[i-1]
          swapped = true
        end
      end
      return arr if !swapped
    end
    arr
  end

  private

  def test_cases
    puts "Setting up test data..."

    test_case_1_hundred = generate_test_case(100)
    test_case_1_hundred_sorted = test_case_1_hundred.sort

    test_case_1_thousand = generate_test_case(1000)
    test_case_1_thousand_sorted = test_case_1_thousand.sort

    test_case_10_thousand = generate_test_case(10_000)
    test_case_10_thousand_sorted = test_case_10_thousand.sort

    [
      { name: "empty array", in: [], out: [] },
      { name: "nil", in: nil, out: [] },
      { name: "non-array", in: "invalid", out: [] },
      { name: "array with single integer", in: [12000], out: [12000] },
      { name: "array w/ large negative element", in: [5, -20000000000000], out: [-20000000000000, 5] },
      { name: "simple 6-element array", in: [2, 4, 3, 1, 6, 5], out: [1, 2, 3, 4, 5, 6] },
      { name: "1 hundred element array", in: test_case_1_hundred, out: test_case_1_hundred_sorted },
      { name: "1 thousand element array", in: test_case_1_thousand, out: test_case_1_thousand_sorted },
      { name: "10 thousand element array", in: test_case_10_thousand, out: test_case_10_thousand_sorted }
    ]
  end

  def generate_test_case(n)
    ([0] * n).map{ rand(n) }
  end

end

BubbleSort.new.test
