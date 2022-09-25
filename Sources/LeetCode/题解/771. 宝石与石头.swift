public extension Solution {
    
    /// <doc:<#Document Name#>>
    ///
    /// - ⌛️：100%
    /// - 🫙：55%
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        stones.filter { jewels.contains($0) }.count
    }
}
