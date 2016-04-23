# http://www.codewars.com/kata/51c38e14ea1c97ffaf000003
# --- iteration 1 ---
def solution(keys, def_val)
  Hash[keys.zip([def_val] * keys.size)]
end

# --- iteration 2 ---
def solution(keys, def_val)
  Hash[keys.map{ |k| [k, def_val]}]
end

