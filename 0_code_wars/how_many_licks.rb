# http://www.codewars.com/kata/80-s-kids-number-1-how-many-licks-does-it-take/
# --- iteration 1 ---
def total_licks(env)
  num_licks = 252
  num_licks += env.values.compact.reduce(&:+) if env.size > 0
  env.reject!{ |k, v| v < 0 }
  toughest_challenge = env.flatten.each_slice(2).sort_by { |x| -x[1] }.first[0] if env.size > 0
  return_sentence(num_licks, toughest_challenge)
end

def return_sentence(num_licks, toughest_challenge = nil)
  str = "It took #{num_licks} licks to get to the tootsie roll center of a tootsie pop."
  toughest_challenge ? str + " The toughest challenge was #{toughest_challenge}." : str
end

