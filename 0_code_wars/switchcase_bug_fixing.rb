# http://www.codewars.com/kata/55c933c115a8c426ac000082
# --- iteration 1 ---
def eval_object(v)
  v["a"].send(v["operation"], v["b"])
end

