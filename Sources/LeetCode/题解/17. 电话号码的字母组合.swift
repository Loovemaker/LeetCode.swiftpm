public extension Solution {
    
    /// <doc:17.---------->
    ///
    /// - ⌛️：82%
    /// - 🫙：58%
    /// - Parameter digits: 电话号码数字的数组
    /// - Returns: 所有字符串组合（不排序）
    func letterCombinations(_ digits: String) -> [String] {
        var result = [""]
        
        for digitChar in digits {
            let digit = Int(String(digitChar))!
            let alphabets = mapping[digit]!
            
            result = result.cartesianProduct(with: alphabets, productMethod: +)
        }
        
        if result == [""] { result = [] }
//        result.removeAll { $0.isEmpty }
        
        return result
    }
}

fileprivate let mapping = [
    2: ["a", "b", "c"],
    3: ["d", "e", "f"],
    4: ["g", "h", "i"],
    5: ["j", "k", "l"],
    6: ["m", "n", "o"],
    7: ["p", "q", "r", "s"],
    8: ["t", "u", "v"],
    9: ["w", "x", "y", "z"],
]
