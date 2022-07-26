# unless statements

a = 1

# using unless statement, here 1 is less than 4
unless a > 4
    puts "Welcome!"
else
    puts "Hello!"
end

# unless as a modifier

b = 0

# unless is behaves as a modifier here 'b += 2' is the statement
# b.zero? is the condition
b += 2 unless b.zero?
puts (b)