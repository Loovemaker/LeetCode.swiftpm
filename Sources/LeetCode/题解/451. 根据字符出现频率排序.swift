public extension Solution {
    
    /// <doc:451.----------->
    ///
    /// - ⌛️：100%
    /// - 🫙：100%
    func frequencySort(_ s: String) -> String {
        var result: String = ""
        
        let sortedElementCount = s.elementCount.sorted { $0.value > $1.value }
        
        for (element, count) in sortedElementCount {
            result.append(contentsOf: String(repeating: element, count: count))
        }
        
        return result
    }
}
