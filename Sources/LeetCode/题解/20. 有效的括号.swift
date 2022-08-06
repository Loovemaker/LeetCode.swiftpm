public extension Solution {
    
    /// <doc:20.------>
    ///
    /// - ⌛️：90%
    /// - 🫙：23%
    /// - Parameter s: 字符串
    /// - Returns: 是否能组成有效的括号
    func isValid(_ s: String) -> Bool {
        
        let parentheses = [
            "(": ")",
            "[": "]",
            "{": "}",
        ]
        
        var stack: [String] = []
        
        for char in s {
            let c = String(char)
            
            switch c {
            case c where parentheses.keys.contains(c):
                stack.append(c)
            case c where parentheses.values.contains(c):
                if let poped = stack.popLast() {
                    if parentheses[poped] == c {
                        continue
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            default:
                return false
            }
        }
        
        return stack.isEmpty
    }
}

