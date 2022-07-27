# Exceptions are errors that occur at run time and halts the execution of the program
# They can be handled with the try-catch mechanism. All exceptions are not errors
# Every exception contains a message string and a stack backtrack

# # take 2 integer values
# $A = 14
# $B = 0

# # divide by zero error
# $C = $A / $B

# puts "Result: #{$C}"
# puts

# def raise_exception
#     puts 'Before Exception is raised!'

#     # using raise to create exception
#     raise 'Exception Created'

#     puts 'After Exception is raised - Not displayed!'
# end
# # call the method
# raise_exception

def raise_and_rescue
    begin
        puts 'Before exception'

        raise 'Exception created'

        puts 'After exception'

        # using rescue method ( if multiple rescue clauses exist, they will be called in turn)
        rescue
            puts 'Finally Saved'
    end
    puts 'Outside from Begin Block!'
end
raise_and_rescue