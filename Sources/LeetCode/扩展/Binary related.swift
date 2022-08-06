extension Int {
    /// 是否在Int32范围内
    var isInt32: Bool {
        (self < 1<<31) && (self >= -(1<<31))
    }
}
