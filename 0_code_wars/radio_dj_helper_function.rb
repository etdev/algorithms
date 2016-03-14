# http://www.codewars.com/kata/561bbcb0fbbfb0f5010000ee/
# --- iteration 1 ---
def longest_possible(playback)
  short_enough_songs = songs.select{ |s| num_secs(s[:playback]) <= playback }
  return false if short_enough_songs.empty?
  short_enough_songs.sort_by{ |s| num_secs(s[:playback]) }.last[:title]
end

def num_secs(time_str)
  mins, secs = time_str.split(":").map(&:to_i)
  mins * 60 + secs
end
