public extension Solution {
    
    /// <doc:393.-UTF-8----->
    ///
    /// - ⌛️：100%
    /// - 🫙：67%
    func validUtf8(_ data: [Int]) -> Bool {
        let bitWidth = 8
        let data_ = data.map{ UInt8($0) }
        var remainingBits = 0
        
        for datum in data_ {
            defer { remainingBits -= 1 }
            
            guard remainingBits == 0 else {
                guard datum.bits.lastIndex(of: false) == bitWidth - 2
                else { return false }
                continue
            }
            
            switch datum.bits.lastIndex(of: false) {
            case bitWidth - 1: remainingBits = 1
            case bitWidth - 3: remainingBits = 2
            case bitWidth - 4: remainingBits = 3
            case bitWidth - 5: remainingBits = 4
            default: return false
            }
        }
        
        return remainingBits == 0
    }
}
