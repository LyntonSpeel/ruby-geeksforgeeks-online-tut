# creating hash using []

p Hash["x", 30, "y", 19]
p Hash["x" => 30, "y" => 19]
puts

# using .new method
a = Hash.new()      # empty hash, returns nil for any access
b = Hash.new("GFG")     # creates hash with default value. If an unknown hash element is accessed, the default value will be returned
c = Hash.new { |key, value|     # wierd case, don't know how to use this
    key = 'a'
    value = 1
}
p a["x"]
p b["x"]
p c["x"]
a["x"] = 49
b["x"] = 30
p a
p b
puts

## try_convert method
a = Hash.try_convert({3=>8})
b = Hash.try_convert("3=>8")
p a
p b
puts

## == operator
a = {"x" => 4, "y" => 109}
b = {"x" => 67, "f" => 78, "z" => 21}
c = {"f" => 78, "x" => 67, "z" => 21}

p a == b
p b == c
puts

## [] element reference operator -> receives the value stored in the key. Returns nil or default value if no value is found
a = {"x" => 45, "y" => 67}
p a["x"]
p a["z"]
puts

## []= element assignment
a = {"x" => 45, "y" => 67}
p a
a["x"] = 34
a["y"] = 89
p a
puts

## clear method -> removes all keys and their values
a = {"a" => 45, "y" => 67}
p a
a.clear
p a
puts

## default method -> returns default value for hash
a = Hash.new("GFG")
p a
p a.default
p a.default(2)
puts

## default= assigment -> sets the default value of the hash
a = {"a" => 1, "b" => 2}
p a
p a.default
a.default = 0
p a.default
puts

## default_proc method -> In this method if Hash.new was called with the block, then it will return the block
a = Hash.new { |a, v| a[v] = v*v*v }
b = a.default_proc
c = []
p b.call(c, 2)
p c
p a
puts

## delete method -> deletes an entry from hash, if key is not found method returns nil, if optional block is given, it will parse the block and return the result of the block
a = {"x" => 34, "y" => 67}
p a
a.delete("x")
p a
a.delete("z") { |key| a.clear }
p a
puts

## delete_if method -> deletes keys and their values if the block is true
a = {"x" => 34, "y" => 67}
p a
a.delete_if { |key, value| key >= "y"}
p a
puts

## each method -> iterates over hash
a = {"x" => 34, "y" => 67}
a.each { |key, value| p "#{key} => #{value}"}
puts

## each_key -> calls block once for each key
a = {"a" => 34, "y" => 67}
a.each_key { |key| p key}
puts

## each_pair method -> similar to each method
a = {"x" => 34, "y" => 56}
a.each_pair { |key, value| p value }
puts

## each_value method -> calls block once for each key in hash and passes back the value parameter
a = { "g" => :g, "h" => :h}
a.each_value { |value| p value }
puts

## empty? method -> returns true if hash does not contain any key value pairs, otherwise returns false

## fetch method -> return value from hash using the given key, if no key is found results are returned based on certain conditions

## has_key? method -> returns true if given key is present in the hash
a = {"g" => 23, "h" => 25}
p a
p a.has_key? "g"
p a.has_key? "y"
puts

## has_value? method -> returns true if given value is present for any key in the hash
a = {"x" => 45, "y" => 33, "z" => 33}
p a
p a.has_value? 55
p a.has_value? 33
puts

## include? method -> Similar to has_key? method

## index method (deprecated, use key method instead) -> return the key that contains the given value

## invert method -> returns a new hash where keys and values are swapped, Duplicate values get only single key which is the last key that has the duplicate value
a = {"g" => 23, "h" => 25, "t" => 25, "x" => 111, "y" => 25}
p a
p a.invert
puts

## key? method -> similar to has_key? method

## keys method -> returns array of keys present in the hash
a = {"a" => 1, "b" => 2}
p a
p a.keys
puts

## length method -> returns the number of key value pairs from the hash
a = {"a" => 1, "b" => 2}
p a
p a.length
puts

## member? method -> similar to has_key? method

## merge method -> returns new hash that contains the other hash's content
a = {"a" => 1, "b" => 2}
b = {"c" => 3, "d" => 4}
p "a: #{a}"
p "b: #{b}"
c = a.merge(b)
p "a: #{a}"
p "b: #{b}"
p "c: #{c}"
puts

## merge! method -> merges content of one hash into another hash
a = {"a" => 1, "b" => 2}
b = {"a" => 1, "c" => 3, "d" => 4}
p "a: #{a}"
p "b: #{b}"
a.merge(b)
p "a: #{a}"
p "b: #{b}"
puts