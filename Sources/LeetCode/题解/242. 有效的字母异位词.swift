public extension Solution {
    
    /// <doc:242.--------->
    ///
    /// - ⌛️：51%
    /// - 🫙：50%
    func isAnagram(_ s: String, _ t: String) -> Bool {
        s.alphabetCount == t.alphabetCount
    }
}
