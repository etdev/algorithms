# http://www.codewars.com/kata/546a3fea8a3502302a000cd2
# --- iteration 1 ---
def find_the_ball start, swaps
  current_pos = start
  swaps.each do |swap|
    if current_pos == swap[0]
      current_pos = swap[1]
    elsif current_pos == swap[1]
      current_pos = swap[0]
    end
  end
  current_pos
end

