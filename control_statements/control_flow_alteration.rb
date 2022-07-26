# statements that alter the control flow of ruby program
# break, next, redo, retry, return, throw/catch

# break statement - breaks out of a loop
i = 1

while true
    if i * 6 >= 30
        break
    end
    p i * 6
    i += 1
end
puts

# next statement - continues with next iteration of loop

for t in 0..10
    if t == 5
        next
    end
    puts t
end
puts

# redo statement - restart current iteration of the loop, NOTE: does not retest loop condition or fetch next element from the iterator
val = 0

while(val < 4)
    puts val
    val += 1
    
    redo if val == 4
end
puts

# # retry statement - restart an iterator based on a condition or method invocation from the starting
# # ONLY WORKS TILL Ruby version 1.8

# var = 7

# var.times do |val|
#     puts val

#     if val == 6 then
#       var -= 1
#       retry
#     end
# end

# return statement - exit from a method with or without a value, NOTE: always returns a value to it's caller. If no statement, return value is nil
def geeks
    val1 = 61
    val2 = 55
    return val1, val2       # returns multiple values as array of values
    puts "Hello Geeks"
end

value = geeks
p value
puts

# throw and catch - throw breaks out of loop or method and transfer control

def lessNumber(num)
    # using throw statement here, 'numberError' is it's label
    throw :numberError if num < 10

    p "Number is greater than 10!"
end

# catch block
catch :numberError do
    # calling method
    lessNumber(11)
    lessNumber(78)

    # exits catch block here
    lessNumber(7)
    lessNumber(4)
end
p "Outside catch block"