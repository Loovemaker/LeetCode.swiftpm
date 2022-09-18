public extension Solution {
    
    /// <doc:347.---K------>
    ///
    /// - ⌛️：100%
    /// - 🫙：92%
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        nums.lazy
            .elementCount
            .sorted { $0.value >= $1.value }
            .map { $0.key }
            .prefix(k)
            .asArray
    }
}
