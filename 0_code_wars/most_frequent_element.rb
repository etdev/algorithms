# http://www.codewars.com/kata/56582133c932d8239900002e/
# --- iteration 1 ---
def most_frequent_item_count(collection)
  counts = collection.each_with_object(Hash.new(0)) do |element, acc|
    acc[element.to_s] = acc[element.to_s] + 1
  end
  counts.empty? ? 0 : counts.values.max
end

# --- iteration 2 ---
def most_frequent_item_count(col)
  col.uniq.map{ |x| col.count(x) }.max || 0
end
