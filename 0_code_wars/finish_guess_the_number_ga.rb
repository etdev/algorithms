# http://www.codewars.com/kata/568018a64f35f0c613000054
# --- iteration 1 ---
class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end

  def guess(n)
    fail "you lose" if @lives < 1
    return true if @number == n
    @lives -= 1
    false
  end
end

