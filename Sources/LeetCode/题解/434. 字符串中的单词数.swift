public extension Solution {
    
    /// <doc:434.--------->
    ///
    /// - ⌛️：100%
    /// - 🫙：38%
    func countSegments(_ s: String) -> Int {
        s
            .split(separator: " ")
            .filter { !$0.isEmpty }
            .count
    }
}
