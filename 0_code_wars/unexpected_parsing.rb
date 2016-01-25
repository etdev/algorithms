# http://www.codewars.com/kata/54fdaa4a50f167b5c000005f/
# --- iterations ---
def get_status(is_busy)
  status = is_busy ? "busy" : "available"
  return { "status" => status }
end
