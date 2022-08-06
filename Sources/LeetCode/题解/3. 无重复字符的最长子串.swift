public extension Solution {

    /// <doc:3.----------->的双窗口解法
    ///
    /// - ⌛️：84%
    /// - 🫙：43%
    /// - Parameter s: 给定的字符串
    /// - Returns: 无重复字符的最长子串的长度
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let chars = s.map { $0 }
        
        var result = 0
        var (left, right) = (0, 0)
        
        for (i, c) in chars.enumerated() {
            right = i
            
            while chars[left..<right].contains(c) {
                left += 1
            }
            
            result = max(result, right - left + 1)    // the current char has been added
        }
        
        return result
    }
}
