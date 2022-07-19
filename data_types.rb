# Illustrate the Number data type

# float type
distance = 0.1

# both integer and float type
time = 9.87 / 3600
speed = distance / time
puts "The average speed of a sprinter is #{speed} km/h"

# boolean types
if true
  puts 'true'
else
  puts 'false'
end

if nil
  puts 'nil is true'
else
  puts 'nil is false'
end

if 0
  puts '0 is true'
else
  puts '0 is false'
end

# string types
puts "String Data Type"
puts 'escape using "\\"';
puts 'That\'s right';

# hashes
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do | key, value |
    print key, " is ", value, "\n"
end

# arrays
ary = [ "fred", 10, 3.14, "This is a string", "last element" ]
ary.each do |i|
  puts i
end

# symbols
domains = { :sk => "Geeks for geeks", :no => "CFG", :hu => "Geeks" }
puts domains[:sk]
puts domains[:no]
puts domains[:hu]