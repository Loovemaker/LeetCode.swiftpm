public extension Solution {
    
    /// <doc:190.------->
    ///
    /// - ⌛️：100%
    /// - 🫙：41%
    func reverseBits(_ n: Int) -> Int {
        let bitWidth = Int32.bitWidth
        var result: Int = 0
        var n_ = n
        
        for _ in 0 ..< bitWidth {
            result <<= 1
            result += n_ & 0x1
            n_ >>= 1
        }
        
        return result
    }
}
