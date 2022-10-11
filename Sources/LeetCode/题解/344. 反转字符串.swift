public extension Solution {
    
    /// <doc:344.------>
    ///
    /// - ⌛️：89%
    /// - 🫙：64%
    func reverseString(_ s: inout [Character]) {
        for i in 0 ..< s.count / 2 {
            s.swapAt(i, s.count - 1 - i)
        }
    }
}
