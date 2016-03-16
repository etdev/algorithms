# http://www.codewars.com/kata/5266876b8f4bf2da9b000362/
# --- iteration 1 ---
def likes(names)
  case names.size
  when 0 then "no one likes this"
  when 1 then "#{names.first} likes this"
  when 2 then "#{names.first} and #{names[1]} like this"
  when 3 then "#{names.first}, #{names[1]} and #{names[2]} like this"
  else "#{names.first}, #{names[1]} and #{names.size-2} others like this"
  end
end
