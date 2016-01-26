# http://www.codewars.com/kata/55ed10a402a0c6e3c3000021
# --- iteration 1 ---
def pointless *args
  args.each do |arg|
    puts args.map(&:chr)
  end
  "Rick Astley"
end

