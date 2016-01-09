# generate a random <string, array> of the length specified
# usage: ruby generate_data [ -a, -s ] [ data length]
# the default is string: ruby generate_data 100
# for array: ruby generate_data -a 100
# order matters; you can't do ruby generate_data 100 -a

def generate_data(type, length)
  length = length.to_i
  if type == "array"
    data = []
    length.times do
      data << rand(1..length)
    end
  else
    data = ""
    length.times do
      data << rand(1..length).to_s
    end
  end
  data
end


begin
  if ARGV[0] == "-a"
    TYPE = "array"
  else
    TYPE = "string"
  end

  DATA_LENGTH = ARGV[1]

  puts "\n #{generate_data(TYPE, DATA_LENGTH)}"

rescue
  puts "Fix your command line args please"
end
