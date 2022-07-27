class Demo
    def initialize(id, name, addr)
        # instance variables
        @id = id
        @name = name
        @addr = addr
    end

    # displaying details
    def display()
        puts "ID: #{@id}"
        puts "Name: #{@name}"
        puts "Address: #{@addr}"
    end
end

# create objects
c1 = Demo.new("1", "Lynton", "home")
c2 = Demo.new("2", "Lucinda", "work")

# call methods
c1.display()
c2.display()
puts