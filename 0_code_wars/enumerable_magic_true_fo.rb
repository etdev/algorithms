# http://www.codewars.com/kata/54598e89cbae2ac001001135
# --- iteration 1 ---
def any?(list, &block)
  list.any?(&block)
end

# --- iteration 2 ---
def any?(list, &block)
  list.send(:any?, &block)
end

