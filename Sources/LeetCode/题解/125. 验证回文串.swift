public extension Solution {
    
    /// <doc:125.------>
    ///
    /// - ⌛️：71%
    /// - 🫙：87%
    func isPalindrome(_ s: String) -> Bool {
        let s_strip = s.lowercased().filter { char in
            char.isLetter || char.isNumber
        }
        
        return s_strip == String(s_strip.reversed())
    }
}

