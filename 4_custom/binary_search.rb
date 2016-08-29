require_relative "./testable"

class BinarySearch
  include Testable

  def solution(arr, n, l, r, count=0)
    return nil unless arr && arr.is_a?(Array)
    return nil if arr.empty? || r < l
    mp = l + (r - l) / 2
    mid_el = arr[mp]
    if mid_el == n
      return mp
    elsif mid_el > n
      return solution(arr, n, l, mp, count+1)
    else
      return solution(arr, n, mp + 1, r, count+1)
    end
  end

  def test_cases
    puts "Setting up test data..."

    test_case_1_hundred = [*0...100]
    test_case_1_million = [*0...1_000_000]
    test_case_100_million = [*0...100_000_000]
    [
      { name: "empty array", in: { arr: [], n: 5, l: 0, r: 0 }, out: nil },
      { name: "nil", in: { arr: nil, n: 5, l: 0, r: 0 }, out: nil },
      { name: "non-array", in: { arr: "invalid", n: 5, l: 0, r: 0 }, out: nil },
      { name: "array with single integer", in: { arr: [12000], n: 12000, l: 0, r: 0 }, out: 0 },
      { name: "simple 6-element array", in: { arr: [1, 2, 3, 4, 5, 6], n: 2, l: 0, r: 5 }, out: 1 },
      { name: "100 element array", in: { arr: test_case_1_hundred, n: 12, l: 0, r: 99 }, out: 12 },
      { name: "1 million element array", in: { arr: test_case_1_million, n: 80_000, l: 0, r: 999_999 }, out: 80_000 },
      { name: "100 million element array", in: { arr: test_case_100_million, n: 3_000_000, l: 0, r: 99_999_999 }, out: 3_000_000 },
      { name: "100 million element array - first element", in: { arr: test_case_100_million, n: 0, l: 0, r: 99_999_999 }, out: 0 },
      { name: "100 million element array - last element", in: { arr: test_case_100_million, n: 99_999_999, l: 0, r: 99_999_999 }, out: 99_999_999 }
    ]
  end

  def generate_test_case(n)
    ([0] * n).map{ rand(n) }
  end

end

BinarySearch.new.test
