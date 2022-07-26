# BEGIN and END blocks, every Ruby program runs BEGIN blocks when file is being loaded
# and runs END blocks after the program has finished executing. Program may contain 
# multiple BEGIN and END blocks. BEGIN blocks are executed in order, END blocks are
# executed in reverse order. NOTE: Open curly brace '{' always comes after BEGIN and END
# NOTE: If an END statement is used in a loop, then it will be executed more than once

# # BEGIN block code
# BEGIN {
#     p "BEGIN block code"
# }

# # END block code
# END {
#     p "END block code"
# }

# # Main program code
# p "Geeks for Geeks"

# BEGIN block
BEGIN {
    a = 4
    b = 3
    c = a + b

    p "This is the BEGIN block code"
    p c
}

# END block
END {
    a = 4
    b = 3
    c = a * b

    p "This is the END block code"
    p c
}

# Code will execute after BEGIN block and before END block
p "Main Block"