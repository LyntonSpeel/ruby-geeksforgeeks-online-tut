# if statement

a = 20

if a >= 18
    p "Eligable to vote"
end

# if-else statement
a = 15

if a >= 18
    p "Eligable to vote"
else
    p "Not Eligable to vote"
end

# if-elif-else ladder statement

a = -1

if a >= 0 && a < 50
    p "Failed"
elsif a >= 50 && a < 60
    p "D"
elsif a >= 60 && a < 70
    p "C"
elsif a >= 70 && a < 80
    p "B"
elsif a >= 80 && a < 90
    p "A"
elsif a >= 90 && a <= 100
    p "A+"
else
    p "Out of range"
end

# Ternary statement

var = 5

a = (var > 2) ? true : false
puts a