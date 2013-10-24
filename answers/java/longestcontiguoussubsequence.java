public static Integer findLengthOfLongestContiguousSubstringWithoutRepeatingCharacters(String string) {
 
    int longestSubstringLength = 0;
    int n = string.length();
    Set<Character> seen = new HashSet<Character>();
 
    int i=0;
    for (int j = 0; j < string.length(); j++) {
        if (!seen.contains(string.charAt(j))) {
            seen.add(string.charAt(j));
        } else {
            // We've seen this character before, update max and shift index i to the right
            //   removing any character from the "seen" set as we move since they are no longer
            //   going to be counted to our max length
            longestSubstringLength = Math.max(longestSubstringLength, j - i);
            while (string.charAt(i) != string.charAt(j)) {
                seen.remove(string.charAt(i));
                i++;
            }
            i++; // Once we finish the while loop, we've moved out left index to the repeated character
                 // it already exists in the set, so we just need to step by it.
        }
    }
 
    //We've reached the end of the string, check to see if our current length is greater than our current max.
    longestSubstringLength = Math.max(longestSubstringLength, n - i);
    return longestSubstringLength;
}

public static void main(String[] argc){

	System.out.println(findLengthOfLongestContiguousSubstringWithoutRepeatingCharacters("stackoverflow"));
}
