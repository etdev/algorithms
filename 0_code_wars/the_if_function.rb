# http://www.codewars.com/kata/54147087d5c2ebe4f1000805
# --- iteration 1 ---
def _if(bool, if_true, if_false)
  bool ? if_true.call : if_false.call
end

