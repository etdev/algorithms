require_relative "./testable"

class MinCoins
  include Testable

  # val = coin value
  # min_results = memo
  def solution(val, min_results = [0])
    return nil unless val.is_a?(Fixnum) && val > 0
    return min_results[val] if min_results[val]
    coin_vals = [1, 3, 5].select{ |x| x <= val }
    min_vals = coin_vals.map do |coin_val|
      min_results[val - coin_val] || solution(val - coin_val, min_results)
    end
    min_results[val] = min_vals.min + 1
    min_results[val]
  end

  def test_cases
    [
      { name: "empty array", in: [], out: nil },
      { name: "nil", in: nil, out: nil },
      { name: "string", in: "invalid", out: nil },
      { name: "one cent", in: 1, out: 1 },
      { name: "two cents", in: 2, out: 2 },
      { name: "three cents", in: 3, out: 1 },
      { name: "four cents", in: 4, out: 2 }
    ]
  end

end

MinCoins.new.test
