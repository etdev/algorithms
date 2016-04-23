# http://www.codewars.com/kata/52af0d380fcae83a560008af
# --- iteration 1 ---
$kids = []
def hand_out_gift(n)
  $kids.include?(n) ? fail : $kids << n
end

# --- iteration 2 ---
def hand_out_gift(n)
  ($kids ||= []).include?(n) ? fail : $kids << n
end

