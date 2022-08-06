public extension Solution {
    
    /// <doc:66.--->
    ///
    /// - ⌛️：95%
    /// - 🫙：70%
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        
        let exponent = 10
        
        var carry = 0
        
        result[digits.count - 1] += 1
        for i in 0..<digits.count {
            let index = digits.count - i - 1
            result[index] += carry
            
            if result[index] >= exponent {
                carry = result[index] / exponent
                result[index] %= exponent
            } else {
                return result
            }
        }
        
        if carry != 0 {
            result.insert(carry, at: 0)
        }
        return result
    }
}
