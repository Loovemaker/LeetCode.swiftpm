public extension Solution {
    
    /// <doc:217.------->
    ///
    /// - ⌛️：40%
    /// - 🫙：65%
    func containsDuplicate(_ nums: [Int]) -> Bool {
        Set(nums).count != nums.count
    }
}
