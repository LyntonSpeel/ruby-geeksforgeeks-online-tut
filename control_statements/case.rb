# case statements
# print "Input from one, two, three, four: "

# # taking input from user
# # str = gets.chomp

# # hardcoded input
# puts
# str = "two"

# # using case statement
# case str
# when "one"
#     p "1"
# when "two"
#     p "2"
# when "three"
#     p "3"
# when "four"
#     p "4"
# else
#     p "default"
# end

# puts "Please enter the students mark: "
# marks = gets.chomp.to_i

# case marks
# when 0..32
#     p "Fail"
# when 33...40
#     p "C"
# when 40...60
#     p "B"
# else
#     p "A"
# end
# puts

# puts "Please enter choice: "
# choice = gets.chomp

# case choice
# when "1", "2"       # when contains two separate values to test for
#     p "Espresso!"
# when "3", "4"
#     p "Short Macchiato!"
# when "5","6"
#     p "Ristretto!"
# when "7","8"
#     p "Cappuccino!"
# else
#     p "No Order"
# end
# puts

# case with no value
str = "Geeks4Geeks"

case 
when str.match(/\d/)
    p "String contains numbers"
when str.match(/[a-zA-Z]/)
    p "String contains letters"
else
    p "No numbers or letters found"
end
puts

# case in method calls

str = "1234"

# here case statement has no value and used as in puts method call
puts case
when str.match(/\d/)
    'contains numbers'
when str.match(/[a-zA-Z]/)
    'contains letters'
else
    'no numbers or letters found'
end