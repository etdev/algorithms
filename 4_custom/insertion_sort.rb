require_relative "./testable"

class InsertionSort
  include Testable

  def solution(arr)
    return [] unless arr && arr.is_a?(Array)
    return arr unless arr.size > 1
    1.upto(arr.size-1).each do |i|
      i.downto(1).each do |j|
        if arr[j] < arr[j-1]
          arr[j], arr[j-1] = arr[j-1], arr[j]
        else
          next
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

    #test_case_10_thousand = generate_test_case(10_000)
    #teswt_case_10_thousand_sorted = test_case_10_thousand.sort

    [
      { name: "empty array", in: [], out: [] },
      { name: "nil", in: nil, out: [] },
      { name: "non-array", in: "invalid", out: [] },
      { name: "array with single integer", in: [12000], out: [12000] },
      { name: "array w/ large negative element", in: [5, -20000000000000], out: [-20000000000000, 5] },
      { name: "negative, zero only array", in: [-1, -1, -2, 0, -1], out: [-2, -1, -1, -1, 0] },
      { name: "simple 6-element array", in: [2, 4, 3, 1, 6, 5], out: [1, 2, 3, 4, 5, 6] },
      { name: "1 hundred element array", in: test_case_1_hundred, out: test_case_1_hundred_sorted },
      { name: "1 thousand element array", in: test_case_1_thousand, out: test_case_1_thousand_sorted },
      #{ name: "10 thousand element array", in: test_case_10_thousand, out: test_case_10_thousand_sorted }
    ]
  end

  def generate_test_case(n)
    ([0] * n).map{ rand(n) }
  end

end

InsertionSort.new.test
