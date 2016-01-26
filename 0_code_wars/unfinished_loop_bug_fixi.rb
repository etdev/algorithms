# http://www.codewars.com/kata/55c28f7304e3eaebef0000da
# --- iteration 1 ---
def create_array(n)
  res=[]
  i=1
  while i <= n
    res+=[i]
    i += 1
  end
  return res
end

# --- iteration 2 ---
def create_array(n)
  (1..n).to_a
end

