public extension Solution {
    
    /// <doc:1.----->
    ///
    /// - ⌛️：82%
    /// - 🫙：13%
    /// - Parameters:
    ///   - nums: 整数数组
    ///   - target: 目标值
    /// - Returns: 两数所在索引
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var unpairedIndices = Dictionary<Int, Int>()
        
        for i in 0..<nums.count {
            let current = nums[i], another = target - current
            
            if let index = unpairedIndices[another] {
                return [index, i]
            }
            
            unpairedIndices[current] = i
        }
        
        return []
    }

}
