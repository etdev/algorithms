# https://www.codewars.com/kata/pyramid-slide-down/
# non-optimal (gives correct answer but doesn't pass codewars tests):
def longest_slide_down(pyramid)
  return 0 if pyramid.empty?
  return pyramid[0][0] if pyramid.size == 1
  return pyramid[0][0] + [longest_slide_down(pyramid_left(pyramid)), longest_slide_down(pyramid_right(pyramid))].max
end

def pyramid_left(pyramid)
  left = pyramid[1..-1]
  (0...left.size).map{ |i| left[i][0..i] }
end

def pyramid_right(pyramid)
  right = pyramid[1..-1]
  (0...right.size).map{ |i| right[i].last(i + 1) }
end

# optimal? (passes tests)
def longest_slide_down(pyramid)
  return 0 if pyramid.empty?
  (pyramid.size - 2).downto(0).each do |i|
    pyramid[i].each_index do |j|
      pyramid[i][j] += [pyramid[i + 1][j], pyramid[i + 1][j + 1]].max
    end
  end
  pyramid[0][0]
end
