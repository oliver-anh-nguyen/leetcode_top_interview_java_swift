// https://leetcode.com/problems/longest-substring-without-repeating-characters/
public int lengthOfLongestSubstring(String s) {
    int result = 0;
    int startIndex = 0;
    
    HashMap<Character, Integer> charMap = new HashMap<>();
    
    for (int i=0; i<s.length(); i++) {
        char value = s.charAt(i);
        if (charMap.containsKey(value)) {
            int foundIndex = charMap.get(value);
            startIndex = Math.max(startIndex, foundIndex + 1);
        }
        result = Math.max(result, i - startIndex + 1);
        charMap.put(value, i);
    }   
    
    return result;
}

