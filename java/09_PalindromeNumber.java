class Solution {
    public boolean isPalindrome(int x) {
        if (x < 0) {
            return false;
        }

        long result = 0;
        int original = x;
        while(x != 0) {
            result = result * 10 + x % 10;
            x = x / 10;
        }

        return original == result;
    }
}