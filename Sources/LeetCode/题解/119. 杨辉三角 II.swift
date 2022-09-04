public extension Solution {
    
    /// <doc:119.------II>
    ///
    /// - ⌛️：47%
    /// - 🫙：63%
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex < cache.count {
            return cache[rowIndex]
        }
        var prev = cache.last!
        
        for _ in cache.count ... rowIndex {
            var row = [1]
            for index in 1 ..< prev.count {
                row.append(prev[index-1] + prev[index])
            }
            row.append(1)
            prev = row
        }
        
        return prev
    }
}

fileprivate let cache = [
    [1],
    [1, 1],
    [1, 2, 1],
    [1, 3, 3, 1],
]
