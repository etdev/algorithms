# http://www.codewars.com/kata/55d8618adfda93c89600012e
# --- iteration 1 ---
def what_is(x)
  puts x
  if x.equal?(42)
    'everything'
  elsif x == (42 ** 42)
    'everything everythinged'
  else
    'nothing'
  end
end


