public extension Solution {
    
    /// <doc:205.------>
    ///
    /// - ⌛️：88%
    /// - 🫙：64%
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var mapping: [Character:Character] = [:]
        for index in s.indices {
            let sChar = s[index]
            let tChar = t[index]
            guard let targetTChar = mapping[sChar] else {
                guard !mapping.values.contains(tChar) else { return false }
                mapping[sChar] = tChar
                continue
            }
            if targetTChar != tChar { return false }
        }
        
        return true
    }
}
