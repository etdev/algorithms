# 100/100
def solution(n, m)
  n / gcd(n, m)
end

def gcd(a, b)
  b, a = [a, b].minmax
  return b if a % b == 0
  gcd(b, a % b)
end
