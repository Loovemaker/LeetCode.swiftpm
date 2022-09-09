public extension Solution {
    
    /// <doc:<#Document Name#>>
    ///
    /// - ⌛️：89%
    /// - 🫙：83%
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums_ = nums
        
        for i in nums_.indices {
            while nums_.indices.contains(nums_[i] - 1),
                    nums_[i] != nums_[nums_[i] - 1] {
                nums_.swapAt(nums_[i] - 1, i)   // Then nums[nums_[i] + 1] == nums_[i]
            }
        }
        
        for (i, num) in nums_.enumerated() {
            guard i + 1 == num else { return i + 1 }
        }
        
        return nums.count + 1
    }
}
