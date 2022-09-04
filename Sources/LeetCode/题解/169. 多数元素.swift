public extension Solution {
    
    /// <doc:169.----->
    ///
    /// - ⌛️：76%
    /// - 🫙：81%
    func majorityElement(_ nums: [Int]) -> Int {
        var candidate: Int = nums.first!
        var count = 1
        
        for num in nums[1...] {
            if num == candidate {
                count += 1
                continue
            }
            count -= 1
            if count < 0 {
                candidate = num
                count = 1
            }
        }
        
        return candidate
    }
}
