# http://www.codewars.com/kata/53f0f358b9cb376eca001079
# --- iteration 1 ---
class Ball
  attr_accessor :ball_type
  def initialize(ball_type = nil)
    @ball_type = ball_type || "regular"
  end
end

