a = 2
a.times { |val| p val}
a.times { p "This is it"}
puts

4.upto(10) do |num|
    p num
end

7.upto(3) { |num| p num}    # This should print nothing because the top value is greater than the bottom value
puts

4.downto(1)  do |num|
    p "Now at #{num}"
end

1.downto(4) { |num| p "Now at #{num}"}  # nothing prints because the bottom value is greater than the top value
puts

(0..60).step(20) { |i| p i}
puts

a = "Welcome
to
GeeksForGeeks
Portal"
p a
a.each_line do |line|
    p line.chomp
end
puts