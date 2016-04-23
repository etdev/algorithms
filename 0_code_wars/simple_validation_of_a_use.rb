# http://www.codewars.com/kata/56a3f08aa9a6cc9b75000023
# --- iteration 1 ---
def validate_usr(name)
  name.tr("^0-9a-z_", "") == name && (4..16) === name.size
end

# --- iteration 2 ---
def validate_usr(name)
  !!name[/\A[a-z0-9_]{4,16}\z/]
end

