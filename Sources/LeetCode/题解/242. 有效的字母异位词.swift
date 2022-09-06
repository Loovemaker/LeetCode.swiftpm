public extension Solution {
    
    /// <doc:242.--------->
    ///
    /// - ⌛️：51%
    /// - 🫙：50%
    func isAnagram(_ s: String, _ t: String) -> Bool {
        s.letterCount == t.letterCount
    }
}

fileprivate extension StringProtocol {
    var letterCount: [Character:Int] {
        var result: [Character:Int] = [:]
        for char in self {
            guard result.keys.contains(char) else {
                result[char] = 1
                continue
            }
            result[char]! += 1
        }
        return result
    }
}
