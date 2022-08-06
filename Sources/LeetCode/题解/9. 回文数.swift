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
        
        return x == Self.reverse(x)
    }
    
    static func reverse(_ x: Int) -> Int {
        var current = x
        var result = 0
        
        let exponent = 10
        
        while current != 0 {
            result *= exponent
            
            result += current % exponent

            current = current / exponent
        }
        guard result.isInt32 else {
            return 0
        }
        
        return result
    }
}
