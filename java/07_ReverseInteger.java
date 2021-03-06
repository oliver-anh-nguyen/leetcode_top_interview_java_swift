// https://leetcode.com/problems/reverse-integer/
class Solution {
    // x = 123
    public int reverse(int x) {
        long result = 0;
        while (x != 0) {
            result = result * 10 + x % 10;
            x = x / 10;
        }

        if (result < Integer.MIN_VALUE || result > Integer.MAX_VALUE) {
            return 0;
        } else {
            return  (int)result;
        }

    }
}