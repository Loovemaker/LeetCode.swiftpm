public extension Solution {
    
    /// <doc:53.------->
    ///
    /// - ⌛️：92%
    /// - 🫙：45%
    func maxSubArray(_ nums: [Int]) -> Int {
        // subarray cannot be empty here
        guard nums.contains(where: { $0 >= 0 }) else { return nums.max() ?? 0 }
        
        var result = 0
        var sum = 0
        for num in nums {
            sum += num
            if sum > 0 {
                result = max(result, sum)
            } else {
                sum = 0
            }
        }
        return result
    }
}
