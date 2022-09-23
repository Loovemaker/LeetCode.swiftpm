public extension Solution {
    
    /// <doc:393.-UTF-8----->
    ///
    /// - ⌛️：17%
    /// - 🫙：100%
    func validUtf8(_ data: [Int]) -> Bool {
        let data_ = data.map{ UInt8($0) }
        var remainingBits = 0
        
        for datum in data_ {
            defer {remainingBits -= 1}
            
            guard remainingBits == 0 else {
                guard datum.bits.suffixEquals(to: UInt8(0b10111111).bits, maxLength: 2) else {
                    return false
                }
                continue
            }
            
            switch datum.bits {
            case let bits
                where bits.suffixEquals(to: UInt8(0b01111111).bits, maxLength: 1):
                remainingBits = 1
            case let bits
                where bits.suffixEquals(to: UInt8(0b11011111).bits, maxLength: 3):
                remainingBits = 2
            case let bits
                where bits.suffixEquals(to: UInt8(0b11101111).bits, maxLength: 4):
                remainingBits = 3
            case let bits
                where bits.suffixEquals(to: UInt8(0b11110111).bits, maxLength: 5):
                remainingBits = 4
            default: return false
            }
        }
        
        return remainingBits == 0
    }
}


fileprivate extension Sequence {
    
    func prefixEquals<S>(to other: S, maxLength: Int) -> Bool
    where S: Sequence, S.Element == Self.Element, S.Element: Equatable {
        self.prefix(maxLength).asArray == other.prefix(maxLength).asArray
    }
    
    func suffixEquals<S>(to other: S, maxLength: Int) -> Bool
    where S: Sequence, S.Element == Self.Element, S.Element: Equatable {
        self.suffix(maxLength) == other.suffix(maxLength)
    }
}
