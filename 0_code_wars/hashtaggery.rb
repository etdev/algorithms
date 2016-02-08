# http://www.codewars.com/kata/536c6d6549aa8b2e160002ae/
# --- iteration 1 ---
class String
  def hashtags
    split.select { |w| w.start_with?("#") }
  end
end

# --- iteration 1 ---
class String
  def hashtags
    scan(/#\w+/)
  end
end
