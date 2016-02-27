# http://www.codewars.com/kata/528d36d7cc451cd7e4000339/
# --- iteration 1 ---
def most_money(students)
  return students.first.name if students.size == 1
  return "all" if students.map{ |st| st.total_money }.uniq.count == 1
  students.sort_by{ |st| st.total_money }.last.name
end

class Student
  def total_money
    5 * fives + 10 * tens + 20 * twenties
  end
end
