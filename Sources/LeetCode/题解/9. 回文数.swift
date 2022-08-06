public extension Solution {
    
    /// <doc:9.---->
    ///
    /// - ⌛️：90%
    /// - 🫙：85%
    /// - Parameter x: 数字
    /// - Returns: 是否为回文数
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        
        return x == reverse(x)
    }
}
