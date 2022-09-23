extension BinaryInteger {
    /// 是否在Int32范围内
    var isInt32: Bool {
        (self < 1<<31) && (self >= -(1<<31))
    }
}

extension BinaryInteger {
    
    /// 由二进制位组成的数组
    ///
    /// 顺序从低位到高位
    var bits: [Bool] {
        var result: [Bool] = []
        var self_ = self
        for _ in 0 ..< bitWidth {
            result.append(self_ & 0b1 == 0b1)
            self_ >>= 1
        }
        return result
    }
}
