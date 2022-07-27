# static keyword is used to share the same method or variable of a class accross the objects of that class
# Ruby does not have static keyword, but it is implemented using the class variable. They begin with '@@'

## implement static variable
class A
    @@count = 0

    def initialize
        @@count += 1
        puts "Count = #@@count"
    end
end

# creating objects of the class
o1 = A.new
o2 = A.new
o3 = A.new
puts

# implement static method - implemented by using class variables in the method of the class. Only allowed to access static data members
class B
    # class variable
    @@count = 0

    # instance method
    def incr
        @@count += 1
    end

    # class method
    def self.count
        return @@count
    end
end

o1 = B.new
# call instance method
o1.incr

o2 = B.new
# calling instance method
o2.incr

# calling class method
puts "Count = #{B.count()}"
puts
