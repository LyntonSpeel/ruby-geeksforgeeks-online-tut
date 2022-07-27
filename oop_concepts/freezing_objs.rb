# Frozen objects: Invoked with Obj#freeze. Frozen objects cannot be modified. Allows us to turn an object into a constant
# NOTE: A frozen object cannot be unfrozen

# define class
class A
    # constructor
    def initialize(x, y)
        @x, @y = x, y
    end

    # accessor methods
    def getX
        @x
    end

    def getY
        @y
    end

    # setter methods
    def setX=(value)
        @x = value
    end

    def setY=(value)
        @y = value
    end
end

# create object
add = A.new(10, 20)

# let us freeze this object
add.freeze

unless add.frozen? 
    puts "Not frozen"
else
    puts "Frozen"
end

# now try using setter methods
# add.setX(30)
# add.setY(50)

# use accessor methods
p add.getX
p add.getY