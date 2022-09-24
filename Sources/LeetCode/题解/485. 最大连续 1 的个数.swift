public extension Solution {
    
    /// <doc:485.------1---->
    ///
    /// - ⌛️：38%
    /// - 🫙：94%
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        nums
            .split { $0 != 1 }
            .map { $0.count }
            .max()
        ?? 0
    }
}
