# https://www.codewars.com/kata/55466989aeecab5aac00003e://www.codewars.com/kata/55466989aeecab5aac00003e/ 
def sql_in_rect(l, w)
  return nil if l == w
  result = []

  until l == 0 || w == 0
    l, w = [l, w].sort
    result << l
    w -= l
  end

  result
end
