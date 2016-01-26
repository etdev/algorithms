# http://www.codewars.com/kata/5672a98bdbdd995fad00000f
# --- iteration 1 ---
def rps(p1, p2)
  moves = ["rock", "scissors", "paper", "rock"]
  return "Player 1 won!" if moves[moves.index(p1) + 1] == p2
  return "Player 2 won!" if moves[moves.index(p2) + 1] == p1
  "Draw!"
end

# --- iteration 2 ---
def rps(p1, p2)
  return "Draw!" if p1 == p2
  winners = { "rock" => "paper", "scissors" => "rock", "paper" => "scissors" }
  "Player #{winners[p2] == p1 ? 1 :  2} won!"
end

