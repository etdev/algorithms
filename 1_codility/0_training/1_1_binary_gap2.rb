def solution(n)
  binary_n = convert_to_base(n, 2)

  zero_groups = binary_n.scan(/(?<=1)0+(?=1)/)

  zero_groups
    .max_by(&:length)
    .length
end

def convert_to_base(n, base)
  return 0 unless n > 0
  result = []

  until n.zero?
    n, rem = n.divmod(base)
    result.unshift(numerals[rem])
  end

  result.join
end

def numerals
  @_numerals ||= %w(0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z)
end
