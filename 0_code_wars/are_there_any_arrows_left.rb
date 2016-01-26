# http://www.codewars.com/kata/559f860f8c0d6c7784000119
# --- iteration 1 ---
def any_arrows(arrows)
  arrows.group_by{ |hsh| hsh["damaged"] ? "damaged" : "undamaged" }["undamaged"] != nil
end

