public extension Solution {
    
    /// <doc:171.-Excel----->
    ///
    /// - ⌛️：82%
    /// - 🫙：48%
    func titleToNumber(_ columnTitle: String) -> Int {
        var result = 0
        for char in columnTitle {
            result *= 26
            result += char.asciiAlphabetValue!
        }
        return result
    }
}
