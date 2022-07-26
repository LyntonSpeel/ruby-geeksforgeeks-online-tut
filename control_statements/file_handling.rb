# File handling in Ruby
# Modes for handling a file
# 'r' -> Read-only mode
# 'r+' -> Read-write mode
# 'w' -> Write-only mode
# 'w+' -> Read-write mode
# 'a' -> Write-only mode, if file exists data will be appended, else a new file will be created
# 'a+' -> Read and Write mode, if file exists data will be appended, else new file is created

# creating a file
fobj = File.new('sample.txt', 'w+')

# writing to file
fobj.syswrite("File Handling")

# closing file
fobj.close()

# opening a file
fobj = File.open('sample.txt', 'r')

# Read the first n chars from the file
p(fobj.sysread(21))

# close the file
fobj.close()

# opening the file
fobj = File.open('sample.txt', 'r')

# read content as array of lines
print(fobj.readlines)
puts

# close the file
fobj.close()

# opening a file
fobj = File.open('sample.txt', 'r')

# read the entire content from the file
print(fobj.read())
puts

# close the file
fobj.close()

# Renaming and deleting files
File.new('sample1.txt', 'a')

# remame a file
p File.rename('sample.txt', 'newSample.txt')

# delete an existing file
p File.delete('sample1.txt')

# Check if filename exists or not
p File.file?('sample.txt')
p File.file?('newSample.txt')

# check if a file has read permission
p File.readable?('newSample.txt')

# check if a file has write permission
p File.writable?('newSample.txt')
