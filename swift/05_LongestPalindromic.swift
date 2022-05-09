// https://leetcode.com/problems/longest-palindromic-substring/
class Solution {
    var start = 0
    var maxLen = 0
    
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        
        let arrStr = Array(s)
        for (i, _) in arrStr.enumerated() {
            if (i < arrStr.count - 1) {
                extendPalindromic(arrStr, i, i)
                extendPalindromic(arrStr, i, i + 1)
            }
        }
        return String(arrStr[start..<maxLen+start])
    }
    
    func extendPalindromic(_ s: Array<Character>, _ j: Int, _ k: Int) {
        var x = j
        var y = k
        while (x >= 0 && y < s.count && s[x] == s[y]) {
            x = x - 1
            y = y + 1
        }
        if (maxLen < y - x - 1) {
            start = x + 1
            maxLen = y - x - 1
        }
    }
    
    
}
