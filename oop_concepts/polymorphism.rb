# polymorphism using inheritence

class Vehicle
    def tyre_type
        puts 'Heavy'
    end
end

# Using inheritence
class Car < Vehicle
    def tyre_type
        puts 'Small'
    end
end

# Using inheritence
class Truck < Vehicle
    def tyre_type
        puts 'Big'
    end
end

# creating object
v = Vehicle.new
v.tyre_type

# creating different object and calling same function
c = Car.new
c.tyre_type

# creating different object and calling same function
t = Truck.new
t.tyre_type
puts

# polymorphism using duck-typing. What an object can do rather than what it actually is, i.e what operations can be performed on the object rathat than the class of the object

class Hotel
    def enters
        puts 'A customer enters'
    end

    def type(customer)
        customer.type
    end

    def room(customer)
        customer.room
    end
end

# Creating class with two methods
class Single
    def type
        puts 'Room is on the fourth floor.'
    end
    
    def room
        puts 'Per night stay is 5000'
    end
end

class Couple
    # same methods as in class Single
    def type
        puts 'Room is on the second floor.'
    end

    def room
        puts 'Per night stay is 8000'
    end
end

# Creating objects
# Performing polymorphism
h = Hotel.new
puts 'This visitor is Single'
customer = Single.new
h.type(customer)
h.room(customer)
puts 'The visitors are a couple'
customer = Couple.new
h.type(customer)
h.room(customer)
puts