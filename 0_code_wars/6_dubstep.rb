# http://www.codewars.com/kata/551dc350bf4e526099000ae5/
# --- iteration 1 ---
def song_decoder(song)
  song.gsub(/(?:WUB)+/, ' ').strip
end

# --- iteration 2 ---
def song_decoder(song)
  song.split("WUB").reject(&:empty?).join(" ")
end
