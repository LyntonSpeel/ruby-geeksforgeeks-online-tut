# class Vehicle
#     def initialize(name, color)
#         @name = name
#         @color = color
#     end

#     def describe
#         puts 'This is a vehicle!'
#     end
# end

# class Car < Vehicle
#     def describe
#         puts 'This is a car'
#         super       # Calls the base class method
#     end
# end

# class Bus < Vehicle
#     def display_this
#         puts 'This is a bus'
#     end
# end

# # creating objects
# car = Car.new('Nissan', 'red')
# bus = Bus.new('Volvo', 'white')

# car.describe
# bus.describe
# bus.display_this
# puts

# class Vehicle
#     attr_accessor :name
#     attr_accessor :color

#     def initialize(name, color)
#         @name = name
#         @color = color
#     end
# end

# class Car < Vehicle
#     attr_accessor :model
    
#     def initialize(name, color, model)
#         super(name, color)
#         @model = model
#     end
# end

# obj = Car.new('Nissan', 'white', 'xxx')
# p obj.name
# p obj.color
# p obj.model
# puts

# class Vehicle
#     def initialize(name, color)
#         @name = name
#         @color = color
#     end

#     # using public method
#     public
#       def display
#         greeting
#         puts 'Your car details are:'
#         puts @name
#         puts @color
#       end
    
#     # using private method
#     private
#       def greeting
#         puts 'Hello, user'
#       end
# end

# obj = Vehicle.new('Nissan', 'white')
# obj.display
# puts

# # Modules: Blocks of code that contains methods and constants while coding. Similar to classes with the exception that we cannot create objects from modules

# module ConstantsAndMethods
#     CONST_ONE = 10
#     CONST_TWO = 20
    
#     def meth1
#         puts 'Belongs to ConstantsAndMethods'
#     end
# end

# puts ConstantsAndMethods::CONST_ONE

# # Mixins: Cross over between modules and classes. We can have our modules constants and methods included in our classes with the keyword include

# module Greeting
#     def display
#         puts 'Hello'
#     end
# end

# class Greetuser
#     include Greeting
#     attr_reader :name
#     def initialize(name)
#         @name = name
#     end

#     public
#       def greet
#         display
#         puts @name
#       end
# end

# obj = Greetuser.new('Lynton')
# obj.display
# p obj.name
# obj.greet

# Extended Mixins: Incorporates the module at the class level, so the class itself can use the module methods as opposed to the object

module Greeting
    def display
        puts 'Hello'
    end
end

class Greetuser
    extend Greeting
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

obj = Greetuser.new('Lynton')
Greetuser.display
puts obj.name
puts

# This is my own extended version of the above example
module Greet
    def display(myname = 'General')
        puts "Hello #{myname}"
    end
end

class Greetme
    include Greet

    attr_reader :name

    def initialize(name)
        @name = name
    end
end

obj = Greetme.new('Lynton')
obj.display(obj.name)