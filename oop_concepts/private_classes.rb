# # by default public
# class Marvel
#     # by default public
#     class Guardians
#         def a
#             puts 'a'
#         end
#         def b
#             puts 'b'
#         end
#     end

#     # by default public
#     class Avengers
#         def t
#             puts 't'
#         end
#     end
# end

# Marvel::Avengers.new.t
# Marvel::Guardians.new.a
# puts

# private class version of above

# # public
# class Marvel
#     # private
#     class Guardians
#         def a
#             puts 'a'
#         end
#         def b
#             puts 'b'
#         end
#     end

#     # public
#     class Avengers
#         def t
#             puts 't'
#         end
#     end

#     # make Guardians class private
#     private_constant :Guardians
# end

# Marvel::Avengers.new.t
# Marvel::Guardians.new.a     # Throws an error(NameError)

# Make that private class can be accessed through the outer-class

class Marvel
    # private
    class Guardians
        def a
            puts 'a'
        end
        def b
            puts 'b'
        end
    end

    # private
    class Avengers
        def t
            puts 't'
        end
    end

    # outer-class methods accessing private classes
    def fury
        Guardians.new.a
        Avengers.new.t
    end

    private_constant :Guardians, :Avengers
end

Marvel.new.fury
# these calls below will throw error as it is explicit accesing private classes
Marvel.Avengers.new.t
Marvel.Guardians.new.a