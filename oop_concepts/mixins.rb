# Mixins provide a controlled way of adding functionality to classes. The code in the mixin starts to interact with the code in the class
# A class can have many mixins

# module that has 2 methods
module G
    def g1
    end
    def g2
    end
end

# module that has 2 methods
module H
    def h1
    end
    def h2
    end
end

# Creating a class
class GFG
    include G
    include H
    def s1
    end
end

# creating object
obj = GFG.new
# calling methods
obj.g1
obj.g2
obj.h1
obj.h2
obj.s1
puts

module Child1
    def a1
        puts "Child 1"
    end
end

module Child2
    def a2
        puts "Child 2"
    end
end

module Child3
    def a3
        puts "Child 3"
    end
end

# Creating class
class Parent
    include Child1, Child2, Child3

    def display
        puts 'Three modules have been included'
    end
end

# creating object
obj = Parent.new

# calling methods
obj.display
obj.a1
obj.a2
obj.a3
puts