# Pre-defined variables

# Using '$0' to know about the script name
puts "Script name: ", $0

# Using '$$' to know about the total number of process in the script
puts "Process number of this script: #{$$}"

# Using $; as default separator for String#split
a = "1,2,3,4,5,6,7"
$; = ","
p a.split

# Pattern matching
"Welcome to GeeksForGeeks Portal!" =~ /Geeks/

# print the string to the left of the last pattern match
p $`

# print the string matched by the last pattern match
p $&

# print the string to right of the last pattern match
p $'
puts

# Pre-defined constants

# Print ruby version
a = RUBY_VERSION
puts "Current Version: #{a}"

# Print ruby platform
b = RUBY_PLATFORM
puts "Current Platform: #{b}"

# Print ruby release date
c = RUBY_RELEASE_DATE
p "Release Date: #{c}"

