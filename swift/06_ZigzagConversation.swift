class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        
        if s.count <= 1 {
            return s
        }
        
        var rows = [String] (repeating: String(), count: min(s.count, numRows))
        var curRow = 0
        var isDown = false
        
        for ch in s {
            rows[curRow] += String(ch)
            if curRow == 0 || curRow == numRows - 1  {
                isDown = !isDown
            }
            curRow += isDown ? 1 : -1
        }
        
        return rows.joined()
    }
}
