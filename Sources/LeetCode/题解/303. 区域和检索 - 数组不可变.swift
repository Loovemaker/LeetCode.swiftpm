public extension Solution {
    
    /// <doc:303.-------------->
    ///
    /// - ⌛️：97%
    /// - 🫙：7%
    class NumArray {
        
        private(set) var nums: [Int] = []
        private(set) var sums: [Int] = []

        init(_ nums: [Int]) {
            self.nums = nums
        }
        
        func sumRange(_ left: Int, _ right: Int) -> Int {
            if !sums.indices.contains(right) {
                let _ = nums[sums.count ... right]
                    .reduce(sums.last ?? 0) { partialResult, num in
                        let partialSum = partialResult + num
                        sums.append(partialSum)
                        return partialSum
                    }
            }
            
            return sums[right] - (left == 0 ? 0 : sums[left - 1])
        }
    }
}
