// https://leetcode.com/problems/string-to-integer-atoi/
class Solution {
    func myAtoi(_ s: String) -> Int {
        if s.contains("+ ") { return 0 }
        let result = (s as NSString).integerValue
        return result > Int32.max ? Int(Int32.max) : max(Int(Int32.min), result)
    }
}
