# http://www.codewars.com/kata/554e4a2f232cdd87d9000038
# --- iteration 1 ---
def DNA_strand(dna)
  dna.gsub(/[ACGT]/, { "A" => "T", "T" => "A", "G" => "C", "C" => "G" })
end

# --- iteration 2 ---
def DNA_strand(dna)
  dna.gsub(/[ATCG]/, "A" => "T", "T" => "A", "C" => "G", "G" => "C")
end

# --- iteration 3 ---
def DNA_strand(dna)
  dna.tr("ATCG", "TAGC")
end

