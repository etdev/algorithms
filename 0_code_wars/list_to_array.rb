# http://www.codewars.com/kata/557dd2a061f099504a000088
# --- iteration 1 ---
def list_to_array(list)
  vals = [list["value"]]
  while list["next"]
    list = list["next"]
    vals << list["value"]
  end
  vals
end

# --- iteration 2 ---
def list_to_array(list)
  puts list.inspect
  if list.nil?
    []
  else
    [list["value"]].concat(list_to_array(list["next"]))
  end
end

