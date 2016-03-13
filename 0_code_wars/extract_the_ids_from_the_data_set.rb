# http://www.codewars.com/kata/5158bfce931c51b69b000001
# ---- iteration 1 ---
def extract_ids(data)
  result_ids  = []
  result_ids << data[:id]
  if data[:items]
    data[:items].each do |item|
      result_ids << extract_ids(item)
    end
  end
  result_ids.flatten
end

# --- iteration 2 ---
def extract_ids(data)
  data.to_s.scan(/id=>(\d+)/).flatten.map(&:to_i)
end
