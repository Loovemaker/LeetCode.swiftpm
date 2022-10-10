public extension Solution {
    
    /// <doc:283.---->
    ///
    /// - ⌛️：93%
    /// - 🫙：35%
    func moveZeroes(_ nums: inout [Int]) {
        var nextIndex = 0
        for i in nums.indices {
            guard nums[i] != 0 else { continue }
            nums.swapAt(i, nextIndex)
            nextIndex += 1
        }
    }
}
