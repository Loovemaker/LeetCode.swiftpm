public extension Solution {
    
    /// <doc:46.---->
    ///
    /// - ⌛️：36%
    /// - 🫙：59%
    func permute(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty { return [] as! [[Int]] }
        if nums.count == 1 { return [[nums.first!]] }
        
        var result: [[Int]] = []
        
        for i in nums.indices {
            var nums_ = nums
            let element = nums_.remove(at: i)
            let permutations: [[Int]] = permute(nums_).map { permutation in
                var permutation_ = permutation
                permutation_.append(element)
                return permutation_
            }
            result.append(contentsOf: permutations)
        }
        
        return result
    }
}
