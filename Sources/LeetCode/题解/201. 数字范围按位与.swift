public extension Solution {
    
    /// <doc:201.-------->
    ///
    /// - ⌛️：50%
    /// - 🫙：17%
    func rangeBitwiseAnd(_ left: Int, _ right: Int) -> Int {
        var (left_, right_) = (left, right)
        var leastZeroBits = 0
        while left_ != right_ {
            defer { leastZeroBits += 1 }
            left_ >>= 1
            right_ >>= 1
        }
        return left_ << leastZeroBits
    }
}
