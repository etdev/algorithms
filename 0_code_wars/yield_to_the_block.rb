# http://www.codewars.com/kata/5253d3a24f16f061cd000228
# --- iteration 1 ---
def compute
  block_given? ? yield : "Do not compute"
end

