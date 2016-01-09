# iteration 1
def solution(a)
    # write your code in Ruby 2.2
    # the answer can't be greater than 100,000, so we don't care about values larger than that
    # so remove them:
    a.delete_if {|x| x > 100000 || x < 1}
    elements = {}
    a.each do |element|
        elements[element.to_s] = true
    end
    1.upto(100000).each do |i|
        return i unless elements[i.to_s]
    end
end

# score: 88% (failed the case where the array is literally just (1..100,000).to_a which makes the answer 100,001
# time: 13 minutes

# iteration 2
def solution(a)
    # write your code in Ruby 2.2
    # max 100,000 elements, so don't care about >100,000 vals# also don't care about negatives
    a.delete_if{ |x| x < 0 || x > 100000 }
    # likely decreased the number of elements so might as well limit the number of loops necessary
    # could also do .uniq here to potentially decrease it further, but I think that's unnecessary
    max_count = a.size
    
    # keep track of elements via keys in a hash
    included_vals = {}
    a.each do |element|
        included_vals[element.to_s] ||= true
    end
    1.upto(max_count+1).each do |i|
        return i unless included_vals[i.to_s]
    end
    
end

# score: 100%
# time: 13:43 (wrote on paper first)




















