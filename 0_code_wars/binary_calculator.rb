# http://www.codewars.com/kata/546ba103f0cf8f7982000df4
# --- iteration 1 ---
OP_MAPPINGS = { "add" => :+, "subtract" => :-, "multiply" => :* }

def calculate(n1, n2, op)
  (eval("0b#{n1}")).send(OP_MAPPINGS[op], eval("0b#{n2}")).to_i.to_s(2)
end

# --- iteration 2 ---
def calculate(n1, n2, op)
  ops = { "add" => :+, "subtract" => :-, "multiply" => :* }
  n1.to_i(2).public_send(ops[op], n2.to_i(2)).to_s(2)
end

