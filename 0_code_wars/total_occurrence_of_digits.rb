# http://www.codewars.com/kata/56311e4fdd811616810000ce/
# --- iteration 1 ---
class List
  def count_spec_digits(int_list, dig_list)
    dig_list.zip(
      dig_list.map{ |n| int_list.join.count(n.to_s) }
    )
  end
end
