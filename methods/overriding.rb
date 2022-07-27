# Method overriding allows several methods to have the same name but do different tasks
# A method that is defined the same in a sub class as in the super class, will override the super class method.

# define a class
class A
    def a
        puts 'Geeks'
    end
end

# define sub class
class B < A
    # change existing method by overriding it
    def a
        puts 'Welcome to GeeksForGeeks'
    end
end

a = A.new
b = B.new
p a.a
p b.a
puts

# define class
class Box
    # constructor method
    def initialize(width, height)
        @w, @h = width, height
    end

    # instance method
    def getArea
        @w * @h
    end
end

# define subclass
class BigBox < Box
    # change existing get getArea method as follows
    def getArea
        @area = @w * @h
        puts "Big box area is: #{@area}"
    end
end

# create object
box = BigBox.new(15, 20)
# print the area using overriden method
p box.getArea()
puts