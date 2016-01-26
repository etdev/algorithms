# http://www.codewars.com/kata/559ac78160f0be07c200005a
# --- iteration 1 ---
def name_shuffler(str)
  str =~ /(\S+)\s(\S+)/; "#{$2} #{$1}"
end

# --- iteration 2 ---
def name_shuffler(str)
  b,a = str.split(" "); "#{a} #{b}"
end

