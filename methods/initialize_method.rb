# Initialize method of a class - used to initialize class variables at the time of object creation
# Allows us to define default argument
# Always returns a new object, so return keyword is not used in the method
# Not required if the class does not require any arguments
# Passing arguments into new, but have not defined initialize method, we will get an error

# Without initialize variable
class Geeks
    def initialize(name)
    end
end

p Geeks.new('name')
puts

# With initialize variable
class Rectangle

    # Initialize method
    def initialize(x, y)
        # Initialize variable
        @x = x
        @y = y
    end
end

# create new Rectangle instance
p Rectangle.new(10, 20)
puts