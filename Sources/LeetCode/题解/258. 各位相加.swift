public extension Solution {
    
    /// <doc:258.----->
    ///
    /// - ⌛️：79%
    /// - 🫙：41%
    func addDigits(_ num: Int) -> Int {
        (num - 1) % 9 + 1
    }
}
