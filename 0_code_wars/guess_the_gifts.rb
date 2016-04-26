# http://www.codewars.com/kata/52ae6b6623b443d9090002c8
# --- iteration 1 ---
def guess_gifts(wishlist, gifts)
  names = wishlist.map{ |gift| gift[:name] }
  wishlist_without_names = wishlist.map do |item|
    item.reject do |k, _v|
      k == :name
    end
  end
  wishlist_by_name = Hash[names.zip(wishlist_without_names)]
  puts wishlist_by_name
  wishlist_by_name.each_with_object([]) do |(name, gift), obj|
    obj << name  if gifts.include?(gift)
  end
end

# --- iteration 2 ---
def guess_gifts(wishlist, gifts)
  wishlist.each_with_object([]) do |item, guesses|
    name = item.delete(:name)
    guesses << name if gifts.include?(item)
  end
end

