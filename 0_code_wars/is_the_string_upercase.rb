# http://www.codewars.com/kata/56cd44e1aa4ac7879200010b
# --- iteration 1 ---
class String
  def is_upcase?
    delete("a-z") == self
  end
end
