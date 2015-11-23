# http://www.codewars.com/kata/find-the-mine/
def mine_location field
  row_len = field.size
  field.flatten.each_with_index do |element, index|
    return [(index/row_len)%row_len, index%row_len] if element == 1
  end
end
