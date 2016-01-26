# http://www.codewars.com/kata/55902c5eaa8069a5b4000083
# --- iteration 1 ---
def format_money(a)
  "$#{'%.2f' % a}"
end

# --- iteration 2 ---
def format_money(a)
  '$%.2f'%a
end

