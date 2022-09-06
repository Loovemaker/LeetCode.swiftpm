public extension Solution {
    
    /// <doc:204.----->
    ///
    /// - ⌛️：57%
    /// - 🫙：31%
    func countPrimes(_ n: Int) -> Int {
        guard n >= 2 else { return 0 }
        
        var primes: [Int] = []
        var numbers = Array(repeating: true, count: n)
        numbers[0] = false
        numbers[1] = false
        
        for i in 2 ..< n {
            if numbers[i] {
                primes.append(i)
                var j = i
                while (2 ..< n).contains(j) {
                    numbers[j] = false
                    j += i
                }
            }
        }
        
        return primes.count
    }
}
