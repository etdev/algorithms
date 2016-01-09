def solution(a)
    # can't be more than 100,000 values, so we could track them all in a hash etc.
    # I think I can just loop through and store the elements as keys in a hash with 
    # val true, then count the size of the resulting hash.
    elements = {}
    a.each do |element|
        elements[element.to_s] ||= true
    end
    elements.size
end
