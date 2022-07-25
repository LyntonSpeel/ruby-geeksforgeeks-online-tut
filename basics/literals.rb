# # boolean literals
# puts(3+7==10);      # returns true
# puts(3+7!=10);      # returns false
# puts(3+7==nil);     # returns false

# # numbers
# puts( "300+1_00+10_0=", 300+1_00+10_0 )   # _ is allowed make readability of the number easier in code but the number itself in memory is not affected
# puts( "hexa-", 0xaa)
# puts( "octal-", 0o222)
# puts( "decimal-", 0d170, " ", 170)
# puts( "binary-", 0b1010)
# puts( "Float-", 1.234E1)
# # puts( "hexa-", aa)  # this will give an error

# # string
# puts("Two multiply three is Six: #{2 * 3}")    # allows string interpolation to use ruby variables and code directly
# puts("guardians\nof\nthe\ngalaxy")             # allows escape characters
# puts('guardians\nof\nthe\ngalaxy')             # ignores interpolation totally

# # symbols - represents a name inside the interpreter, they are placed inside the interpreter and never garbage collected
# puts(:":guardian id#{20+1_5}")      # create symbol keys by interpolation

# ranges
for i in 2..5 do            # prints out values between the given boundaries (including the boundary). Use ... to exclude the boundary
  print("#{i} ")
end
puts

# arrays -> collection of objects created using '[' and ']'
gog = ['Quill', 'Gamora', 'Rocket', 'Groot', 'Drax']
puts(gog[0])
puts(gog[2])

print("Negative Index: (gog[-3]) => ", gog[-3], "\n\n")     # Negative indices are counted from the end of the array
puts("[start, end]: ", gog[0, 3], "\n")                     # print using start index and number of elements from start
puts("Using range:", gog[0..7])                             # print using a range, range values that are beyond maximum index value of array returns nil

# hashes -> Collection of key value pairs. They cannot be changed once they are created
h1 = Hash.new           # Hash creation method 1
h2 = {}                 # Hash creation method 2
h1 = {'Quill' => 100, 'Drax' => 200, 'Gamora' => 300}       # Initializing key value pairs
h2 = {Quill: 1, Gamora: 2}                                  # Initializing key value pairs with symbol keys
print(h1.keys, "\n")
print(h2.keys, "\n")
# symbols can be used when checking in hash for values
for i in h2.keys do
    if i==:Quill
        print(i, "=>", h2[i], "\n")
    end
end

# regular expression -> can be created with or without delimeters or with %r{pattern}
l1 = 'guardians of the galaxy'
l2 = 'Doctor Strange'

if ( l1 =~ /of(.*)/ )       # Checks whether 'of' is in l1 in // format
    puts l1
end

if ( l2 =~ %r{Doc(.*)} )    # Checks whether 'Doc' is in l2 in %r format
    puts l2
end

if ( l2 =~ /off(.*)/ )      # Checks whether 'off' is in l2, if not print 'nothing'
    puts l2
else
    puts "nothing"
end





