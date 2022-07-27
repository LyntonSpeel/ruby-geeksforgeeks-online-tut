# Instance variable has a name starting with the '@' symbol. Restricted to the instance of the object
# They have the value nil before initialization
# They are private by default
# Instance variables of object can only be accessed by the instance methods of the object
# They do not need a declaration
# They are dynamically appended to an object when it is first referenced
# Belongs the object itself
# An instance variable can be used by several class methods except when the method is considered static

class A
    # constructor
    def initialize()
        # instance variable
        @name = "R2J"
    end

    # define method to display details
    def display
        puts "Name is #@name"
    end
end
# create object
obj = A.new()
# calling instance method
obj.display
puts

class B
    # defining instance method
    def get(n)
        # instance variable
        @age = n
    end

    def incr()
        @age += 1
    end

    def display
        puts "Age : #{@age}"
    end
end

obj = B.new
obj.get(20)
obj.display
obj.incr()
obj.display()
puts