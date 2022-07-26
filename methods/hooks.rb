# Ruby hooks are called in reaction to something you do. Usually used to extend the working of methods at run time
# They are not defined by default and need to be defined by the programmer to imply them on any object, class or module
# They can be used to perform certain functions once a particular action has been executed
# Several hook methods: Included, Prepended, Extended, Inherited, method_missing

# Included: used to include a method, attribute or module to another module. It makes the underlined module available to 
#           the instances of the class

# Declare a module to greet a person
module Greetings
    def self.included(person_to_be_greeted)
        puts "The #{person_to_be_greeted} is welcomed with an open heart!"
    end
end

# Class where module is included
class Person
    include Greetings # implementation of the include statement
end

person = Person.new
puts

# Prepended: provides another way of extending the functioning of modules at different places. It uses the concept of overriding
#            The modules can be overriden using methods defined in the target class

module Ruby
    def self.prepended(target)  # Implementation of prepended method
        p "#{self} has been prepended to #{target}"
    end

    def Type
        "The Type belongs to Ruby"
    end
end

class Coding
    prepend Ruby        # The module Ruby is prepended
end

# Method call
p Coding.new.Type
puts

# Extended: Can apply methods in a module to the class

module Ruby2
    def self.extended(target)
        p "#{self} was extended by #{target}"
    end

    def Type
        "The Type is Ruby"
    end
end

class Coding2
    extend Ruby2    # Extending the module Ruby2
end

p Coding2.Type
puts

# Inherited: Inherited methods are called whenever a subclass of a class is implemented. Making a child class from a parent class
class Vehicle
    def self.inherited(car_type)
        p "#{car_type} is a kind of Vehicle"
    end
end

class Hyundai < Vehicle     # Inheriting the Vehicle class
end

# method_missing: comes to action when calling a method on an object that does not exist
class Ruby3
    def method_missing(input, *args)    # method_missing function in action
        "#{input} not defined on #{self}"
    end

    def Type
        "The Type is Ruby"
    end
end

var = Ruby3.new

# Calling a method that exists
p var.Type

# Calling a method does not exist
p var.Name
puts
