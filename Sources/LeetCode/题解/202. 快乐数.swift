public extension Solution {
    
    /// <doc:202.---->
    ///
    /// - ⌛️：69%
    /// - 🫙：57%
    func isHappy(_ n: Int) -> Bool {
        var n_ = n
        while n_ >= 10 {
            n_ = n_
                .description
                .map { Int(String($0))! }
                .reduce(into: 0) { partialResult, value in
                    partialResult += value * value
                }
        }
        return cache.contains(n_)
    }
}

fileprivate let cache = [1, 7]
