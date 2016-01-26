# http://www.codewars.com/kata/545cff101288c1d2da0006fb
# --- iteration 1 ---
def pagination_text(page_number, page_size, total_products)
  (1..total_products)
    .each_slice(page_size).to_a
    .[](page_number-1)
    .tap { |x| return "Showing #{x.first} to #{x.last} of #{total_products} Products." }
end

