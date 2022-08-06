public extension Solution {
    
    /// <doc:50.-Pow(x,-n)>
    ///
    /// - ⌛️：86%
    /// - 🫙：97%
    func myPow(_ x: Double, _ n: Int) -> Double {
        switch n {
        case 1:
            return x
        case 0:
            return 1.0
        case n where n < 0:
            return myPow(1.0 / x, -n)
        default:
            break
        }
        
        if n % 2 == 0 {
            return myPow(x * x, n / 2)
        } else {
            return x * myPow(x * x, (n-1) / 2)
        }
    }
}
