# Visibility of class variable and instance is always private
# Access control is only applicable to methods
# Private methods in Ruby can also be inherited
# Works on two conditions: First, where the method is called, Second, the self keyword is included or not
# By default methods are public
# By default the initialize method is private and cannot be made public
# In private methods we do not use the self-keyword

# taking a class
class A
    # public method without using the public keyword
    def m1
        puts 'm1'
    end

    # using public keyword
    public
    
      def m2
        puts 'm2'
      end

      def m3
        puts 'm3'
        
        # calling m1 method
        m1

        # calling m1 method using self-keyword
        self.m1
      end
end

# creating objects of class A
a = A.new

# calling method m1
a.m1

# calling method m2
a.m2

# calling mehod m3
a.m3
puts

## private access control

class B
    # this method cannot be made public, private by default
    def initialize
        puts 'Initialize'
    end

    # public method
    def a
        puts 'a'
    end

    # using private keyword to declare private method
    private
      def b
        puts 'b'
      end
end

# create object
obj = B.new
# calling public method
obj.a
# calling private method - will give an error
# obj.b
puts


## protected access control
class C
    def initialize
        # calling method b directly
        b

        # calling method b using self
        self.b
    end

    # public methods
    def a
        puts 'a'
    end

    # protected method
    protected
      def b
        puts 'b'
      end
end

obj = C.new
# calling public method - OK
obj.a
# calling protected method - will give error
# obj.b
puts

## calling private and protected methods from within public method of the same class

class D
    # public method
    def a
        puts 'a'
        # calling private and protected methods from inside the public method
        b
        c
    end

    # defining protected
    protected
      def b
        puts 'b'
      end

    # defining private
    private
      def c
        puts 'c'
      end
end

# create object
obj = D.new
# calling public method
obj.a
puts

## inheriting private methods

class E
    # public method
    def a
        puts 'a'
    end

    # protected method
    protected
      def b
        puts 'b'
      end

    # define private member
    private
      def c
        puts 'c'
      end
end

# F class inheriting from E class
class F < E
    # public method
    def d
        puts 'd'
        # calling all three methods of E class
        a
        b
        c
    end
end

obj = F.new
# calling the public method of F class which will automatically call the private and protected methods of the E class
obj.d
puts