class Solution {
    func reverse(_ x: Int) -> Int {
        var tmp = x
        var ans = 0
    
        while tmp != 0 {
            ans = ans * 10 + tmp % 10
            tmp = tmp / 10
        }
        
        let min: Int = Int(pow(Double(-2),Double(31)))
        let max: Int = Int(pow(Double(2),Double(31)))
        if ans < min || ans > max - 1 {
            return 0
        }
    
        return ans
    }
}
