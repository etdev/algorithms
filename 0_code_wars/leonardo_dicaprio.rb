# http://www.codewars.com/kata/56d49587df52101de70011e4
# --- iteration 1 ---
def leo(oscar)
  return "Leo got one already!" if oscar > 88
  case oscar
  when 88 then "Leo finally won the oscar! Leo is happy"
  when 86 then "Not even for Wolf of wallstreet?!"
  else "When will you give Leo an Oscar?"
  end
end
