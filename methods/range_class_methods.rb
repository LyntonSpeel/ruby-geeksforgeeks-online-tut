# Exploring the Range class methods

# created using the .new method
a = 12
b = 15

# Output will be 12..15
puts Range.new(a, b, false)
puts

# == operator
a = Range.new(2, 5, false)
b = Range.new(2, 5, false)
p a == b
puts

# === operator, this operator is used by the case statement
case 25.67
when 1...55 then p 'Lower'
when 55...85 then p 'Medium'
when 85..100 then p 'Upper'
else p 'Uknown'
end
puts

# begin method: returns the first obj of range

b = Range.new(3, 9, false)
p b.begin
puts

# each method: used to iterate over elements of range. passes each element in turn to the block

(40..45).each do |i|
    print i, '...'
end
puts
puts

# end method: returns the end object of the range

a = Range.new(3, 9, false)
p a.end
puts

# eql? method: check if two ranges are the same in terms of their start, end and exclusive flag values
a = Range.new(2, 5, false)
b = Range.new(2, 5, false)
p a.eql?(b)
puts

# exclude_end? method: Returns true if the end of the range is omitted, otherwise returns false

a = Range.new(3, 9, false)
p a.exclude_end?
puts

# first method: returns the starting obj of the range

a = Range.new(3, 9, true)
p a.first
puts

# last method: returns the last obj of the range

a = Range.new(3, 8, false)
p a.last
puts

# member? method: checks if the given value is a member of the range

a = 1..10
p a.member?(5)
puts

# include? method: checks if obj is an element of the range
p ("A".."G").include?("Z")
puts

# step method: Iterates over the range
("A".."G").step() do |obj|
    print "#{obj}, "
end
puts