# http://www.codewars.com/kata/567de72e8b3621b3c300000b
# --- iteration 1 ---
class String
  def letter?
    /\A[a-z]\z/i === self
  end
end

