# constructor is automatically invoked when an instance of a class is created
# can contain group of instructions or a method call that will execute at the time of object creation
# NOTE:
# Used to initialize instance variables
# Defined using the initialize and def keywords
# Treated as special method in Ruby
# Can be overloaded
# CANNOT be inherited
# Returns the instance of the class
# The .new method internally calls the initialize method on the new object

# class name
class Demo
    # constructor
    def initialize
        puts 'Welcome to GeeksForGeeks'
    end
end

# Creating object
Demo.new
puts

## Initializing instance variables

# class name
class Geeks
    # constructor
    def initialize
        @var1 = "GeeksForGeeks"
        @var2 = "Sudo Placement"
    end

    # display method
    def display
        puts "Value of first instance variable : #{@var1}"
        puts "Value of second instance variable : #{@var2}"
    end
end

# creating object
obj = Geeks.new
# calling display method
obj.display
puts
