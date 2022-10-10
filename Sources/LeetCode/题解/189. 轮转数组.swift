public extension Solution {
    
    /// <doc:189.----->
    ///
    /// - ⌛️：74%
    /// - 🫙：93%
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard !nums.isEmpty else { return }
        let k_ = k % nums.count
        let tail = nums[(nums.count - k_)...]
        nums = tail + Array(nums[..<(nums.count - k_)])
    }
}
