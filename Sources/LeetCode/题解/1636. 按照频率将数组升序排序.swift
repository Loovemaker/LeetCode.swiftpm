public extension Solution {
    
    /// <doc:1636.------------>
    ///
    /// - ⌛️：100%
    /// - 🫙：100%
    func frequencySort(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        
        let sortedElementCount = nums.elementCount.sorted {
            ($0.value, -$0.key) < ($1.value, -$1.key)   // # Just as Python
        }
        
        for (element, count) in sortedElementCount {
            result += .init(repeating: element, count: count)
        }
        
        return result
    }
}
