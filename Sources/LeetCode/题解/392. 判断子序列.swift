public extension Solution {
    
    /// <doc:392.------>
    ///
    /// - ⌛️：100%
    /// - 🫙：72%
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        guard !s.isEmpty else { return true }
        var sIndex = s.startIndex
        for c in t {
            guard c == s[sIndex] else { continue }
            sIndex = s.index(after: sIndex)
            if sIndex == s.endIndex { return true }
        }
        return false
    }
}
