public extension Solution {
    
    /// <doc:387.------------->
    ///
    /// - ⌛️：24%
    /// - 🫙：6%
    func firstUniqChar(_ s: String) -> Int {
        s
            .elementCount
            .filter { $0.value == 1 }
            .map { Array(s).firstIndex(of: Character(String($0.key)))! }
            .min()
        ?? -1
    }
}
