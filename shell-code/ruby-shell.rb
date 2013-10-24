require 'set'
 
class String
  def find_LSWRC
    # To refer to the string object, use self.  
    # In example if the string called is "Oh my god"
    #
    # You would access the h by typing
    #   self[2] -> "h"
    #
    # If you wanted the length of the string type
    #   self.length -> 9
    
    
  end
end
 
# Equivalent of ruby main 
if __FILE__ == $PROGRAM_NAME
 
  length = "abc".find_LSWRC
  raise "String abc fails with incorrect length #{ length }" unless length == 3
 
  length = "aaaaaaaaaaa".find_LSWRC
  raise "String aaaaaaaaaa fails with incorrect length #{ length }" unless length == 1
 
  length = "abcdefaghi".find_LSWRC
  raise "String abcdefaghi fails with incorrect length #{ length }" unless length == 9
 
  puts "All lengths evaluated to true, success achieved!"
end
