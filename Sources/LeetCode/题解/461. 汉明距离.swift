public extension Solution {
    
    /// <doc:461.----->
    ///
    /// - ⌛️：44%
    /// - 🫙：88%
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        (x ^ y).bits.count(of: true)
    }
}
