public extension Solution {
    
    /// <doc:162.----->
    ///
    /// - ⌛️：100%
    /// - 🫙：41%
    func findPeakElement(_ nums: [Int]) -> Int {
        guard nums.count > 2 else { return nums.firstIndex(of: nums.max()!)! }
        
        let (leftIndex, rightindex) = (0, nums.count - 1)
        let middleIndex = (leftIndex + rightindex) / 2
        
        if nums[middleIndex] > nums[middleIndex + 1] {
            return findPeakElement(nums[...middleIndex].asArray)
        } else if nums[middleIndex] < nums[middleIndex + 1] {
            return middleIndex + 1 + findPeakElement(nums[(middleIndex + 1)...].asArray)
        } else {
            return [
                findPeakElement(nums[...middleIndex].asArray),
                middleIndex + 1 + findPeakElement(nums[(middleIndex + 1)...].asArray)
            ].max { nums[$0] < nums[$1] }!
        }
    }
}
