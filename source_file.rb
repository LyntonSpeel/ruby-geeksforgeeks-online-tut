# Ruby program to illustrate Keywords

# here 'if' is a keyword
# it can't be used as a variable
# if = 20  # this line will generate an error

# Here 'if' and 'end' are keywords
# if condition to check whether
# your age is enough for voting
=begin
  # This code will produce errors, because the second if is being treated like a variable, see above
  if if >= 18
    puts "You are eligible to vote."
  end
=end
puts "__ENCODING__ keyword returns " + __ENCODING__.to_s
puts "__LINE__ keyword returns " + __LINE__.to_s
puts "__FILE__ keyword returns " + __FILE__.to_s 

# example

# defining class Vehicle using the 'class' keyword
class Vehicle
  # defining method using the 'def' keyword
  def geeks
    # printing result
    puts "Hello Geeks!"
  
    # end of the method using the 'end' keyword
  end
  # end class Vehicle using the 'end' keyword    
end

# creating object
obj = Vehicle.new

# calling method using object
obj.geeks