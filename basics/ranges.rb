# Ranges in Ruby

# Array value separator
$, =", "

# using start_point..end_point
# to_a is used to convert it
# into an array
range_op = (7 .. 10).to_a

# display the result
puts "#{range_op}"

# using start_point...end_point
# to_a is used to convert it
# into an array
range_opp = (7 ... 10).to_a

# displaying the result
puts "#{range_opp}"

ranges = 6..8
puts ranges.include?(3)         # should print false
puts "Maximum val = #{ranges.max}"      # print maximum value that lies in the range
puts "Min val = #{ranges.min}"          # print minimum value that lies in the range

# iterating through the range
ranges.each do |digit|
    puts "In loop #{digit}"
end

# ranges as conditions
num = 4152

result = case num
when 1000..2000 then "Lies between 1000 and 2000"
when 2001..3000 then "Lies between 2000 and 3000"
when 3001..4000 then "Lies between 3000 and 4000"
when 4001..5000 then "Lies between 4000 and 5000"
else "Above 5000"
end

puts result

# ranges as intervals

#using if statement
if (('A'..'Z') === 'D')
    # display the value
    puts "D lies in the range A to Z"
end

# printing the reverse order of a range
puts ('Z'..'W').to_a
puts ('W'..'Z').to_a.reverse

