class A
    # define public method
    public
      def a
        puts 'a'
        # calling private method inside public method
        b
      end
    
      # define private method
      private
        def b
            puts 'b'
        end
end

obj = A.new
obj.a
puts