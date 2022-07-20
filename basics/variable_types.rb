# local variables
age = 20
_Age = 20

# # instance variables
# class Customer
#     def initialize(id, name, addr)
    
#         # Instance variables
#         @cust_id = id
#         @cust_name = name
#         @cust_addr = addr
#     end

#     # display result
#     def display_details()
#         puts "Customer id #@cust_id"
#         puts "Customer name #@cust_name"
#         puts "Customer address #@cust_addr"
#     end
# end

# cust1 = Customer.new("1", "John", "Address 1")
# cust2 = Customer.new("2", "Paul", "Address 2")

# cust1.display_details()
# cust2.display_details()

# instance variables
class Customer

    #class variable initialization
    @@no_of_customers = 0

    def initialize(id, name, addr)
    
        # Instance variables
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
    end

    # display result
    def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
    end

    def total_no_of_customers()
        # class variable
        @@no_of_customers += 1
        puts "Total number of customers: #@@no_of_customers"
    end
end

cust1 = Customer.new("1", "John", "Address 1")
cust2 = Customer.new("2", "Paul", "Address 2")

cust1.display_details()
cust1.total_no_of_customers()
cust2.display_details()
cust2.total_no_of_customers()

# Global variables
$global_variable = 10

class Class1
    def print_global
        puts "Global variable in Class 1 is #{$global_variable}"
    end
end
class Class2
    def print_global
        puts "Global variable in Class 2 is #{$global_variable}"
    end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global