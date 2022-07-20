puts "Hello World!"

# Ruby interprets newline characters(\n) and semicolons(;) as the end of a statement.
# If a line has a +, - or backslach(\) at the end of it, then it indicates that the statement continues

# ambiguous statements due to whitespace characters
# a / b interprets as a/b (Here a is a variable)
# a b interprets as a(b) (Here a is a method)
def a(u) return 1 end
a = 3
b = 2
puts (a + b)        # interprets as a + b, so prints 5 as output
puts (a b)          # interprets as a(b), so returned value from function a is returned

BEGIN{
  puts "Code called before the program runs"
}

END{
    puts "Code called at the end of a program"
}