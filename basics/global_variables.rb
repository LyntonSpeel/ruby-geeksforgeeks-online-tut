# global variable
$global_variable = 10

# Defining a class
class Class1
    def print_global
        puts "Global variable in Class1 is #$global_variable"
    end
end

class Class2
    def print_global
        puts "Global variable in Class2 is #$global_variable"
    end
end

# Creating objects
class1obj = Class1.new
class1obj.print_global

# Creating another object
class2obj = Class2.new
class2obj.print_global

$glob_var = "GFG"

# Defining class
class Author
    def instance_method
        puts "global vars can be used everywhere. See? #{$glob_var}, #{$another_glob_var}"
    end
    def self.class_method
        $another_glob_var = "Welcome to GeeksForGeeks"
        puts "global vars can be used everywhere. See? #{$glob_var}"
    end
end

Author.class_method
# "global vars can be used everywhere. See? GFG"

author = Author.new
author.instance_method
# "global vars can be used everywhere. See?"
# "GFG, Welcome to GeeksForGeeks"