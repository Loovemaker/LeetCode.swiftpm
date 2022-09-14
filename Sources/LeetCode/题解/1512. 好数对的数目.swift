public extension Solution {
    
    /// <doc:1512.------->
    ///
    /// - ⌛️：100%
    /// - 🫙：20%
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var result = 0
        
        let numCount = nums.elementCount
        for (_, count) in numCount {
            guard count >= 2 else { continue }
            result += comb(count, 2)
        }
        
        return result
    }
}

/// C(n, m)
///
/// n ≥ m
fileprivate let comb: (Int, Int) -> Int = {
    precondition($0 >= $1)
    
    var n_ = $0
    
    var result = 1
    for m_ in 1 ... $1 {
        result *= n_
        n_ -= 1
        result /= m_
    }
    
    return result
}
