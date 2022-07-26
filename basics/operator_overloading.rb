# Operator overloading

# class Car
#     attr_accessor :name, :color
    
#     # Initialize the name and color
#     def initialize(name, color)
#         @name = name
#         @color = color
#     end

#     # method to overload the + operator using operator function
#     def +(obj)
#         return Car.new("#{self.name}#{obj.name}",
#                        "#{self.color}#{obj.color}")
#     end
# end

# a = Car.new("Merc", "Red")
# b = Car.new("Audi", "Silver")
# puts (a+b).inspect

class Car
    attr_accessor :name, :color

    # Initialize the name and color
    def initialize(name, color)
        @name = name
        @color = color
    end

    # method to overload the / operator using operator function
    def /(obj)
        return Car.new("#{self.name}#{obj.name}",
                       "#{self.color}#{obj.color}")
    end
end

a = Car.new("Merc", "Red")
b = Car.new("Audi", "Silver")
puts (a/b).inspect

class Comparable_operator
    include Comparable

    attr_accessor :name

    # Initialize the name variable
    def initialize(name)
        @name = name
    end

    def <=>(obj)
        return self.name <=> obj.name
    end
    
    def ==(obj)
        return self.name == obj.name
    end
end
a = Comparable_operator.new("Geeks for Geeks")
b = Comparable_operator.new("Operator Overloading")
puts (a <=> b)
puts (a == b)
puts
class Tester
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def +(obj)
        return @num + obj
    end

    def *(obj)
        return @num * obj
    end

    def **(obj)
        return @num ** obj
    end
end
a = Tester.new(5)
puts a + 3
puts a * 3
puts a ** 3
puts
class Tester2
    attr_accessor :num

    def initialize(num)
        @num = num
    end

    def +(obj)
        return self.num + obj.num
    end

    def *(obj)
        return self.num * obj.num
    end

    def **(obj)
        return self.num ** obj.num
    end
end
c = Tester2.new(5)
d = Tester2.new(3)
puts c + d
puts c * d
puts c ** d
puts
# class Array_Operators
#     attr_accessor :arr

#     def initialize(arr)
#         @arr = arr
#     end

#     def [](x)
#         @arr[x]
#     end
    # def [] = (x, value)       # There is a problem with this line when I run it
#         @arr[x] = value
#     end
#     def <<(x)
#         @arr << x
#         return ("#{@arr}")
#     end
# end
# a = Array_Operators.new(0, 3, 9, 27, 81)
# puts a[4]
# a[5] = 51
# puts a[5]
# puts a << 41
# puts a[6]