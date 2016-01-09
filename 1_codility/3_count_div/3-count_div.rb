def solution(a, b, k)
    if a % k == 0
        # first is a, then a+k, then a+2k then a+3k... up to b
        # in other words, (B-A)/K + 1
        return (b-a)/k + 1
    else
        # first is the multiple of K right before A, and so on.
        # so (B - (A - A%K)) / 2
        return (b-(a-a%k))/k
    end
end
