public extension Solution {

    /// <doc:7.----->
    ///
    /// - ⌛️：95%
    /// - 🫙：57%
    /// - Parameter x: 数字
    /// - Returns: 反转的数字
    func reverse(_ x: Int) -> Int {
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
