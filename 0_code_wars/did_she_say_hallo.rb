# http://www.codewars.com/kata/56a4addbfd4a55694100001f/
# --- iteration 1 ---
@hallos = %w(hello ciao salut hallo hola ahoj czesc)

def validate_hello(greetings)
  @hallos.each do |hallo|
    return true if /#{hallo}/ === greetings.downcase
  end
  false
end

# --- iteration 2 ---
def validate_hello(greetings)
  /hello|ciao|salut|hallo|hola|ahoj|czesc/i === greetings
end
