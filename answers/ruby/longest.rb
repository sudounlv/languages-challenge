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
    
    seen = Set.new
    maxLength = 0
 
    j = 0
    # In c/c++/java this would be - for(int i; i<self.length-1; i++)
    for i in 0...self.length
      chr = self[i]
      # Ruby set logic to say, if the value of chr is not in the set
      if !seen.include? chr
        seen.add chr
      else
        maxLength = [maxLength, i-j].max
        while(self[i] != self[j])
          seen = seen.delete self[j]
          j += 1
        end
        j += 1
      end
    end
 
    maxLength = [maxLength, self.length - j].max
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
