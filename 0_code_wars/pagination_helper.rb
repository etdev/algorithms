# http://www.codewars.com/kata/paginationhelper
class PaginationHelper

  attr_accessor :collection, :items_per_page

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  def item_count
    @item_count ||= @collection.length
  end

  def page_count
    (item_count.to_f / items_per_page.to_f).ceil
  end

  def page_item_count(page_index)
    return -1 unless page_index >= 0 && page_index < page_count
    if page_index == page_count - 1
      (item_count % items_per_page) == 0 ? item_count : (item_count % items_per_page)
    else
      items_per_page
    end
  end

  def page_index(item_index)
    return -1 unless item_index < item_count && item_index >= 0
    (item_index.to_f/items_per_page.to_f).floor
  end
end
