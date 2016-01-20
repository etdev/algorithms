# http://www.codewars.com/kata/5645b24e802c6326f7000049/
# iteration 1
def get_a_down_arrow_of(n)
  return "" if n < 1
  pad_l = (1...n).map{ |x| x % 10 }.join("")
  pad_r = pad_l.reverse
  result_arr = []
  n.downto(1).each do |i|
    result_arr << "#{pad_l}#{i%10}#{pad_r}"
    pad_l[-1], pad_r[0] = ["", ""] if pad_l.size > 0
  end
  result_arr.map.with_index{ |x, i| " " * i << x }.join("\n")
end

# iteration 2
def get_a_down_arrow_of(n)
  return "" unless n > 0

  pad_l = Array.new(n-1){ |i| (i + 1) % 10 }.join("")
  pad_r = pad_l.reverse

  n.downto(1).map.with_index do |x, i|
    str = " " * i + "#{pad_l}#{x%10}#{pad_r}"
    pad_l[-1], pad_r[0] = ["", ""] if pad_l.size > 0
    str
  end.join("\n")
end
