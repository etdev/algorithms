# http://www.codewars.com/kata/55960bbb182094bc4800007b
# --- iteration 1 ---
def insert_dash(num)
  num.to_s.chars.map.with_index.each_with_object("") do |(chr, i), acc|
    acc << "-" if acc[-1].to_i.odd? && chr.to_i.odd?
    acc << chr
  end
end

