def solution(a)
    # I'm not sure about the O(1) space requirement but my idea is to store counts in a hash table
    # with keys corresponding to the elements that have appeared, and values for their counts.
    return -1 unless a.is_a?(Array) && a.size > 0
    
    val_counts = {}
    a.each_with_index do |element, i|
        val_counts[element.to_s] ||= 0
        val_counts[element.to_s] += 1
        return i if val_counts[element.to_s] > (a.size/2)
    end
    -1
    
end
