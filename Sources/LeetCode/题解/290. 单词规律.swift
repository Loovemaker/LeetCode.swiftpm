public extension Solution {
    
    /// <doc:<#Document Name#>>
    ///
    /// - ⌛️：100%
    /// - 🫙：69%
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var map: [Character: Substring] = [:]
        let s_split = s.split(separator: " ")
        
        guard pattern.count == s_split.count else { return false }
        for (index, key) in pattern.enumerated() {
            let substr = s_split[index]
            if map.keys.contains(key) {
                guard map[key]! == substr else { return false }
            } else {
                guard !map.values.contains(substr) else { return false }
                map[key] = substr
            }
        }
        
        return true
    }
}
