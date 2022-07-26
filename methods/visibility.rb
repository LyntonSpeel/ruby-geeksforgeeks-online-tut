# Method visibility refers to the fact that instance methods can be public, private or protected.
# Methods are by default public. They need to be declared private or protected to change their visibility
# Depends on 3 types of access modifiers of a class: Public, Private and Protected Access Modifiers

# Public Access Modifier
# define class
class Geeks
    # methods are public by default
    def publicMethod1
        p "publicMethod1 called!"
    end

    # using public keyword
    public
      def publicMethod2
        p "publicMethod2 called!"
      end
end

# create objects
obj = Geeks.new()

# calling methods of object
obj.publicMethod1()
obj.publicMethod2()
puts

# Protected Access Modifier

# super class
class Parent
    # protected keyword
    protected

    # protected method, can not be called directly
    def protected_method
        p 'protected_method called'
    end    
end

# sub class
class Geeks2 < Parent
    def public_method
        # protected method called in public method
        self.protected_method
    end
end

# creating object
obj = Geeks2.new

# calling method
obj.public_method
puts

# Private Access Modifier

# define class
class Geeks3
    # private keyword
    private
    
    # private method, can not be called directly
    def private_method
        p 'private_method called!'
    end

    # public keyword
    public
    
    # public method
    def public_method
        private_method
    end
end

obj = Geeks3.new
obj.public_method

# Illustrate method visibility

# super class
class Parent2
    private
    # private method
    def private_method
        p 'private_method called!'
    end

    protected
    # protected method
    def protected_method
        p 'protected_method called!'
    end

    public
    # public methods

    def public_method1
        p 'public_method1 called!'
    end

    def public_method2
        # protected method called in public method
        protected_method
        # private method called in public method
        private_method
    end
end

# sub class
class Child < Parent2
    # public method
    def public_method3
        # protected method called in public method
        protected_method
    end
end

# objects
obj1 = Parent2.new
obj2 = Child.new

# calling methods
p 'Parent methods'
obj1.public_method1
obj1.public_method2
p 'Child methods'
obj2.public_method1
obj2.public_method3
