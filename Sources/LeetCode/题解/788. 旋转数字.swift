public extension Solution {
    
    /// <doc:788.----->
    ///
    /// - ⌛️：50%
    /// - 🫙：50%
    func rotatedDigits(_ n: Int) -> Int {
        (1 ... n).lazy
            .filter {
                let chars = $0
                    .description
                    .asArray
                return !chars.contains { !cache1.contains($0) } &&
                chars.contains { cache2.contains($0) }
            }
            .count
    }
}

fileprivate let cache1: [Character] = ["0", "1", "2", "5", "6", "8", "9"]
fileprivate let cache2: [Character] = ["2", "5", "6", "9"]
