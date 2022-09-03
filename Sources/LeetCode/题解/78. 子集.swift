public extension Solution {
    
    /// <doc:78.--->
    ///
    /// - ⌛️：94%
    /// - 🫙：56%
    func subsets(_ nums: [Int]) -> [[Int]] {
        func subsets(owned: [Int], remaining: [Int]) -> [[Int]] {
            var remaining_ = remaining
            guard let element = remaining_.popLast() else { return [owned] }
            return subsets(owned: owned, remaining: remaining_)
                + subsets(owned: owned + [element], remaining: remaining_)
        }
        return subsets(owned: [], remaining: nums)
    }
}
