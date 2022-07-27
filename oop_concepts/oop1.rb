# class Language
#     def initialize(language_name, topic_name)
#         @language_name = language_name
#         @topic_name = topic_name
#     end

#     # Defining methods
#     def return_name
#         return @language_name
#     end

#     def return_topic
#         return @topic_name
#     end
# end
# obj1 = Language.new('Ruby', 'method')
# obj2 = Language.new('Scala', 'string')
# p "Language name for obj1: #{obj1.return_name}"
# p "Topic name for obj1: #{obj1.return_topic}"
# p "Language name for obj2: #{obj2.return_name}"
# p "Topic name for obj2: #{obj2.return_topic}"
# puts

# # variable scope

# # global variables
# class Language2
#     # Creating global variable - can be used anywhere
#     $reader = 'ABCD'
#     def initialize(language_name, topic_name)
#         @language_name = language_name
#         @topic_name = topic_name
#     end

#     # Defining methods
#     def return_name
#         @language_name
#     end

#     def return_topic
#         @topic_name
#     end

#     def modify_topic(value)
#         @topic_name = value
#     end
# end
# obj1 = Language2.new('Ruby', 'method')
# obj2 = Language2.new('Scala', 'string')
# p "Language name for obj1: #{obj1.return_name}"
# p "Topic name for obj1: #{obj1.return_topic}"
# p "Language name for obj2: #{obj2.return_name}"
# p "Topic name for obj2: #{obj2.return_topic}"
# # print the global variable
# p "The reader is #{$reader}"
# # modifying attribute
# obj1.modify_topic('string')
# p "New topic of obj1: #{obj1.return_topic}"
# puts

# # class variables
# class Language
#     # global variable
#     $reader = 'ABCD'

#     # class variable
#     @@count = 0
#     def initialize(language_name, topic_name)
#         @language_name = language_name
#         @topic_name = topic_name
#         @@count += 1
#     end

#     # Methods
#     def return_name
#         @language_name
#     end
    
#     def return_topic
#         @topic_name
#     end

#     # return class variable
#     def return_count
#         @@count
#     end
# end
# l1 = Language.new('Ruby', 'method')
# l2 = Language.new('Scala', 'string')
# p "Language name for l1 object: #{l1.return_name}"
# p "Topic name for l1 object: #{l1.return_topic}"
# p "Language name for l2 object: #{l2.return_name}"
# p "Topic name for l2 object: #{l2.return_topic}"
# p "The reader is #{$reader}"
# p "The number of objects created is #{l1.return_count}"
# p "The number of objects created is #{l2.return_count}"
# puts

class Language
    attr_reader :language_name
    attr_writer :topic_name
    attr_reader :topic_name

    def initialize(language_name, topic_name)
        @language_name = language_name
        @topic_name = topic_name
    end
end
o = Language.new('Ruby', 'method')
p "Language: #{o.language_name}"
p "Topic: #{o.topic_name}"
# changing the topic name
o.topic_name = 'array'
p "Topic: #{o.topic_name}"
puts