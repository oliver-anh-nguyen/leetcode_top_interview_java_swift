// https://leetcode.com/problems/regular-expression-matching/
class Solution {
    func isMatch(_ s: String, _ p: String) -> Bool {
        if (s.isEmpty || p.isEmpty) {
            return false
        }
        
        var dp = Array(repeating: Array(repeating: false, count: p.count+1), count: s.count+1)
        dp[0][0] = true
        
        let ch:Character = "0"
        var string = Array(repeating: ch, count: s.count + 1)
        var pattern = Array(repeating: ch, count: p.count + 1)
        
        let s = Array(s)
        let p = Array(p)
        
        for i in 0..<s.count {
            string[i+1] = s[i]
        }
        
        for i in 0..<p.count {
            pattern[i+1] = p[i]
        }
        
        for i in 1..<pattern.count {
            if pattern[i] == "*" && dp[0][i-2] {
                dp[0][i] = true
            }
        }
        
        for i in 1..<string.count {
            for j in 1..<pattern.count {
                if pattern[j] == string[i] || pattern[j] == "." {
                    dp[i][j] = dp[i-1][j-1]
                } else if (pattern[j] == "*") {
                    if (pattern[j-1] != string[i] && pattern[j-1] != "."){
                        dp[i][j] = dp[i][j-2]
                    } else {
                        dp[i][j] = dp[i-1][j] || dp[i][j-2]
                    }
                }
            }
        }
        
        return dp[s.count][p.count]
    }
}
