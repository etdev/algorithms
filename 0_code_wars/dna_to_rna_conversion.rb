# http://www.codewars.com/kata/5556282156230d0e5e000089
# --- iteration 1 ---
def DNAtoRNA(dna)
  dna.gsub("T", "U")
end

# --- iteration 2 ---
def DNAtoRNA(dna)
  dna.tr("T", "U")
end

