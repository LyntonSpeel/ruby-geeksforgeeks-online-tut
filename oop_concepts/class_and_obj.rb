# defining a class
class GFG
    # defining method
    def geeks
        puts "Hello Geeks!"
    # end of method
    end
# end of class
end

# creating object
obj = GFG.new

# calling method using object
obj.geeks
puts

class Vehicle
    # initialize method
    def initialize(id, color, name)
        # setting object values
        @id = id
        @color = color
        @name = name

        puts "ID : #{@id}"
        puts "Color : #{@color}"
        puts "Name : #{@name}"
    end
end

v1 = Vehicle.new("1", "Red", "ABC")
v2 = Vehicle.new("2", "Black", "XYZ")
puts