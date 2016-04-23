# http://www.codewars.com/kata/54fe05c4762e2e3047000add
# --- iteration 1 ---
class Ship
  def initialize(draft, crew)
    puts "draft: #{draft}, crew: #{crew}"
    @draft = draft
    @crew = crew
  end

  def is_worth_it
    @draft - @crew * 1.5 >= 20
  end
end

