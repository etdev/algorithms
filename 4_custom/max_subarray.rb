require_relative "./testable"

class MaxSubarray
  include Testable

  # arr: input array
  def solution(arr)
    return nil unless arr.is_a?(Array)
    return nil if arr.empty?
    return arr.first unless arr.size > 1
    max_so_far, max_current = arr.first, arr.first
    (1...arr.size).each do |i|
      max_current = [(max_current + arr[i]), arr[i]].max
      max_so_far = [max_so_far, max_current].max
    end
    max_so_far
  end

  def test_cases
    [
      { name: "empty array", in: [], out: nil },
      { name: "nil", in: nil, out: nil },
      { name: "string", in: "invalid", out: nil },
      { name: "single positive element", in: [1], out: 1 },
      { name: "single negative element", in: [-1], out: -1 },
      { name: "basic array", in: [1, 2, -1, 2], out: 4 },
      { name: "all positive", in: [1, 2, 3, 4], out: 10 },
      { name: "all negative", in: [-4, -1, -3, -2], out: -1 },
      { name: "large negatives and zero", in: [-999_999_999, -999_999_999, -999_999_999, 0], out: 0 }
    ]
  end
end

MaxSubarray.new.test(debug: true)
