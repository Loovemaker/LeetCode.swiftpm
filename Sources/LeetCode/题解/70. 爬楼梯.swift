public extension Solution {
    
    /// <doc:70.---->
    ///
    /// - ⌛️：100%
    /// - 🫙：48%
    func climbStairs(_ n: Int) -> Int {
        guard n >= 0 else {
            return 0
        }
        
        if n < smc.count {
            return smc[n]
        }
        
        for i in smc.count...n {
            smc.append(smc[i - 1] + smc[i - 2])
        }
        return smc[n]
    }
}

/// stairs methods count
fileprivate var smc = [1, 1, 2, 3, 5, 8, 13, 21, 34]
