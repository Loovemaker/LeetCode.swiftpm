public extension Solution {
    
    /// <doc:338.------>
    ///
    /// - ⌛️：68%
    /// - 🫙：22%
    func countBits(_ n: Int) -> [Int] {
        guard n >= cache.count else { return cache[0 ... n].asArray }
        var result = cache
        
        for i in cache.count ... n {
            result.append(
                result[i / 2] +
                (i % 2 == 0 ? 0 : 1)
            )
        }
        
        return result
    }
}

fileprivate let cache = [0, 1]
