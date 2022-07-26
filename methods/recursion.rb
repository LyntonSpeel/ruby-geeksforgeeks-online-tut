# Recursion - process in which a function calls itself directly or indirectly

# Iterative program
def iterative_sum(array_of_numbers)
    sum = 0
    array_of_numbers.each do |num|
        sum += num
    end
    sum
end

puts iterative_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts

# recursive method
def recursive_sum(array_of_numbers)
    # Base Case: If the array is empty, return 0
    # if array_of_numbers.empty?
    #     return 0

    # # Recursive code: Adding each element to the variable by calling the method
    # else
    #     sum = array_of_numbers.pop
    #     return sum + recursive_sum(array_of_numbers)
    # end    

    return 0 if array_of_numbers.empty?
    
    sum = array_of_numbers.pop
    sum + recursive_sum(array_of_numbers)
end

puts recursive_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts

def recursive_factorial(number)
    # Base Case: 

    if (0..1).include?(number)
        return 1
    end

    # Recursive call:
    number * recursive_factorial(number - 1)
end

puts recursive_factorial(6)
puts

def fibonacci(num)
    # Base case: when N is less than 2
    if num < 2
        return num
    else

    # Recursive call: sum of last two Fibonacci's
    fibonacci(num - 1) + fibonacci(num - 2)
    end
end

puts fibonacci(7)