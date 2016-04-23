# http://www.codewars.com/kata/5265a8beff1d1500a30005e9
# --- iteration 1 ---
def line_types(lines)
  lines.map do |line|
    if line.nil?
      :unknown
    elsif /alpha/ === line.downcase
      :alpha
    elsif /beta/ === line.downcase
      :beta
    else
      :unknown
    end
  end
end

# --- iteration 2 ---
def line_types(lines)
  lines.map{ |l| l =~ /(alpha|beta)/i ? $1.to_sym.downcase : :unknown }
end

