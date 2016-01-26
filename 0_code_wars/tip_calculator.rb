# http://www.codewars.com/kata/56598d8076ee7a0759000087
# --- iteration 1 ---
def calculate_tip(amount, rating)
  ratings = Hash[(%w(terrible poor good great excellent).zip([0.0, 0.05, 0.1, 0.15, 0.2]))]
  ratings[rating.downcase] ? (ratings[rating.downcase] * amount).ceil : "Rating not recognised"
end

