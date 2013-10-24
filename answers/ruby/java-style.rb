require 'set'
 
class StringUtil
  def self.find_LSWRC str
    
    seen = Set.new
    maxLength = 0
 
    j = 0
    # In c/c++/java this would be - for(int i; i<self.length-1; i++)
    for i in 0...str.length
      chr = str[i]
      # Ruby set logic to say, if the value of chr is not in the set
      if !seen.include? chr
        seen.add chr
      else
        maxLength = [maxLength, i-j].max
        while(str[i] != str[j])
          seen = seen.delete str[j]
          j += 1
        end
        j += 1
      end
    end
 
    maxLength = [maxLength, str.length - j].max
  end
end
 
# Equivalent of ruby main 
if __FILE__ == $PROGRAM_NAME
 
  length = StringUtil.find_LSWRC "abc"
  raise "String abc fails with incorrect length #{ length }" unless length == 3
 
  length = StringUtil.find_LSWRC "aaaaaaaaaaa"
  raise "String aaaaaaaaaa fails with incorrect length #{ length }" unless length == 1
 
  length = StringUtil.find_LSWRC "abcdefaghi"
  raise "String abcdefaghi fails with incorrect length #{ length }" unless length == 9
 
  puts "All lengths evaluated to true, success achieved!"
end
