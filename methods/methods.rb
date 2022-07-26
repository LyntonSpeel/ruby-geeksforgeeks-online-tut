# methods in ruby

# methods with no parameters
def geeks
    puts 'Welcome to GFG portal'
end

geeks
puts

# methods with parameters
def geeks2(var1 = 'GFG', var2 = 'G4G')
    puts "First parameter is #{var1}"
    puts "Second parameter is #{var2}"
end

geeks2 "GeeksforGeeks", "Sudo"
puts
puts "Without parameters"
puts
geeks2
puts

# methods with variable number of arguments
def geeks3(*var)
    puts "Number of parameters is: #{var.length}"

    # loop through parameters
    for i in 0..var.length - 1
        puts "Parameter: #{var[i]}"
    end
end

geeks3 "GFG", "G4G"
geeks3 "GeeksForGeeks"

# return statements in methods: By default a method always returns the last statement that was evaluated in the body of the method

def num
    a = 10
    b = 39
    
    sum = a + b

    return sum
end

puts "The result is: #{num}"
