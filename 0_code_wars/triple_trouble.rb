# http://www.codewars.com/kata/55d5434f269c0c3f1b000058/
# --- iteration 1 ---
def triple_double(num1,num2)
  matches_num1 = num1.to_s.scan(/(0{3}|1{3}|2{3}|3{3}|4{3}|5{3}|6{3}|7{3}|8{3}|9{3})/)
    .flat_map(&:first).map{ |x| x[0] }
  matches_num2 = num2.to_s.scan(/(0{2}|1{2}|2{2}|3{2}|4{2}|5{2}|6{2}|7{2}|8{2}|9{2})/)
    .flat_map(&:first).map{ |x| x[0] }
  matches_num1.each { |x| return 1 if matches_num2.include?(x) }
  0
end

# obviously not ideal; /(0-9){3}/ didn't work of course, and I couldn't figure
# out how to match three of the same integer when I don't know what the integer
# will be.

# --- iteration 2 ---
def triple_double(a, b)
  a_trips = a.to_s.scan(/(\d)\1{2}/).flatten(1)
  a_trips.each { |trip| return 1 if b.to_s =~ /#{trip}{2}/ }; 0
end
