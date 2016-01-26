# http://www.codewars.com/kata/52b50a20fa0e77b304000103
# --- iteration 1 ---
def is_santa_clausable(obj)
  ["say_ho_ho_ho", "distribute_gifts", "go_down_the_chimney"].each do |meth|
    return false if obj.methods.grep(/\A#{meth}\z/).empty?
  end; true
end

# --- iteration 2 ---
SC_METHODS = [:say_ho_ho_ho, :distribute_gifts, :go_down_the_chimney]

def is_santa_clausable(obj)
  SC_METHODS.all? { |meth| obj.respond_to?(meth) }
end

