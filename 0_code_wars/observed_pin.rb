# https://www.codewars.com/kata/the-observed-pin/train/
MAPPINGS = {
  "0" => %w(0 8),
  "1" => %w(1 2 4),
  "2" => %w(1 2 3 5),
  "3" => %w(2 3 6),
  "4" => %w(1 4 5 7),
  "5" => %w(2 4 5 6 8),
  "6" => %w(3 5 6 9),
  "7" => %w(4 7 8),
  "8" => %w(5 7 8 9 0),
  "9" => %w(6 8 9)
}

def get_pins(n)
  return [] if n.empty?
  return MAPPINGS[n] if n.length == 1

  head, tail = n[0], n[1..-1]
  MAPPINGS[head].flat_map{ |m| get_pins(tail).map{ |n| m + n } }
end

def get_pins(n)
  return MAPPINGS[n] if n.size == 1
  n.chars.map{ |m| MAPPINGS[m] }.reduce{ |acc, el| acc.product(el) }.map(&:join)
end
