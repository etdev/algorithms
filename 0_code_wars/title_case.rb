# http://www.codewars.com/kata/title-case/
# --- iteration 1 ---
def title_case(title, minor_words = "")
  title, minor_words = [title, minor_words].map {|x| x.split.map(&:capitalize)}
  title.map!.with_index do |word, i|
    minor_words.include?(word) && i > 0 ? word.downcase : word
  end.join(" ")
end
