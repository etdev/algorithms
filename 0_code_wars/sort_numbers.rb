# http://www.codewars.com/kata/5174a4c0f2769dd8b1000003
# --- iteration 1 ---
def solution(nums)
  nums.try(:sort)  || []
end

class Object
  def try(meth, *args)
    return nil unless self
    respond_to?(meth) ? send(meth, *args) : nil
  end
end

# --- iteration 2 ---
def solution(n)
  n.sort rescue []
end

# --- iteration 3 ---
def solution(n)
  Array(n).sort
end

# --- iteration 4 ---
def solution(n)
  [*n].sort
end

# --- iteration 5 ---
def solution(nums)
  (nums || []).sort
end

nd


