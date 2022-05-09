// https://leetcode.com/problems/palindrome-number/
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if (x < 0) {
            return false
        }
        var origin = x
        var result = 0
        while (origin != 0) {
            result = result * 10 + origin % 10
            origin = origin / 10
        }
        return x == result
    }
}
