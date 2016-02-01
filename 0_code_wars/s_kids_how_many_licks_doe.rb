# http://www.codewars.com/kata/566091b73e119a073100003a
# --- iteration 1 ---
def total_licks(env)
  licks = 252
  env.values.each { |v| licks += v}
  challenge = env.key(env.values.max)
  info = "It took #{licks} licks to get to the tootsie roll center of a tootsie pop."
  info += " The toughest challenge was #{challenge}." if !(env.empty? || env.values.max < 0)
  return info
end

