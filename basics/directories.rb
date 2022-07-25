# A directory is a location where files can be stored. Dir and FileUtils modules manages directories and the File Class handles files
# .. refers to parent directory and . refers to the current directory

# # Dir class
# # f = Dir.mkdir 'abc'     # create a directory
# # print("#{f}")
# # puts Dir.mkdir('folder')
# puts Dir.exists?('folder')      # check if a directory exists
# puts Dir.empty?('folder')       # check if directory is empty or not

# dir_obj = Dir.new('folder')     # create a new directory object using keyword 'new', NOTE: does not create a directory, the directory must already exist
# puts Dir.pwd                    # prints the current directory
# puts Dir.home                   # prints the home directory of the current user
# # puts Dir.home('lyntons')      # prints the home directory of the user 'lyntons'
# puts dir_obj.path               # prints the path parameter of a directory object. This is instance method and NOT a class method
# puts Dir.getwd                  # prints out the path of the current working directory
# Dir.chdir('folder')             # change the current working directory
# puts Dir.pwd
# Dir.chdir('..')
# puts Dir.pwd
# print("Entries:\n")
# puts Dir.entries('.')           # prints all the files and folders present in the current working directory
# glob() method used to get all the files matching a certain pattern
# print("All files in the current working directory\n")
# puts Dir.glob('*')
# print("\nAll files containing 'ob' in the name: \n")
# puts Dir.glob('*ob*')
# print("\nAll ruby files:\n")
# puts Dir.glob('*.rb')

# Dir.mkdir('abc')
# Dir.rmdir('abc')                  # remove a directory, can also use 'delete' and 'unlink' methods
# puts Dir.exist?('abc')

# Dir.mkdir('parent')
# print('Current Directory: ')
# puts Dir.pwd
# require "fileutils"

# FileUtils.mkdir_p 'parent/child/folder'     # create nested directory in parent folder
# Dir.chdir('parent')
# print('Current Directory: ')
# puts Dir.pwd
# puts Dir.exists?('child')

# Dir.chdir('child')
# print("Current Directory: ")
# puts Dir.pwd
# puts Dir.exists?('folder')

# Dir.chdir('../..')
# puts Dir.pwd

Dir.mkdir('f1')
Dir.mkdir('f2')
require "fileutils"

FileUtils.mv('f1', 'f2')        # move folder f1 into folder f2
Dir.chdir('f2')
puts Dir.exists?('f1')
Dir.chdir('..')

# cp() method in FileUtils module copies files from the current directory to destination directory


