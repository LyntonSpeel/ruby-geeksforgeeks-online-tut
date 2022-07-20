puts "Hello World"
puts "Hello Again"

# this is a single line comment and will not be executed
=begin
  a multi line 
  comment in ruby
=end

puts "Alok has #{25+30/6} Rupees in his pocket"     # Inserting computations in text strings

# variables - don't need to state its type, ruby will determine that automatically
cars = 100
drivers = 30
puts "There are #{cars} cars and #{drivers} drivers."

# getting input from the user
# gets.chomp.to_i  gets an integer from the user
# gets.chomp.to_f  gets a float from the user

print "Give a number: "
number = gets.chomp.to_i
puts "You just entered #{number}"