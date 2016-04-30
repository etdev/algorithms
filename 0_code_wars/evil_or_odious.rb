# http://www.codewars.com/kata/56fcfad9c7e1fa2472000034
# --- iteration 1 ---
def evil(n)
  n.to_s(2).count("1").even? ? "It's Evil!" : "It's Odious!"
end

