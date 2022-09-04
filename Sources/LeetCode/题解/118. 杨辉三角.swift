public extension Solution {
    
    /// <doc:118.----->
    ///
    /// - ⌛️：80%
    /// - 🫙：77%
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows < cache.count {
            return Array(cache[0 ..< numRows])
        }
        var result = cache
        
        for _ in cache.count ..< numRows {
            var row = [1]
            let prev = result.last!
            for index in 1 ..< prev.count {
                row.append(prev[index-1] + prev[index])
            }
            row.append(1)
            result.append(row)
        }
        
        return result
    }
}

fileprivate let cache = [
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
]
