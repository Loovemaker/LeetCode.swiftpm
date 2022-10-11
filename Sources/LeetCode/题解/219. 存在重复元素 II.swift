public extension Solution {
    
    /// <doc:219.--------II>
    ///
    /// - ⌛️：50%
    /// - 🫙：11%
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var memory: [Int: Int] = [:]
        
        for (index, num) in nums.enumerated() {
            defer { memory[num] = index }
            if let oldIndex = memory[num], index - oldIndex <= k {
                return true
            }
        }
        
        return false
    }
}
