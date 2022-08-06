public extension Solution {
    
    /// <doc:43.------>
    ///
    /// - ⌛️：50%
    /// - 🫙：46%
    func multiply(_ num1: String, _ num2: String) -> String {
        let base = 10
        
        var product = Array(repeating: 0, count: num1.count + num2.count)
        
        for (position1, digit1) in num1.reversed().enumerated() {
            let digit1_ = Int(String(digit1))!
            for (position2, digit2) in num2.reversed().enumerated() {
                let digit2_ = Int(String(digit2))!
                
                let position = position1 + position2
                product[position] += digit1_ * digit2_
            }
        }
        
        for index in 1 ..< product.count {
            let carry = product[index - 1] / base
            product[index - 1] %= base
            product[index] += carry
        }
        
        while let digit = product.popLast() {
            guard digit == 0 else {
                product.append(digit)
                break
            }
        }
        
        var result = ""
        while let digit = product.popLast() {
            result.append(String(digit))
        }
        
        if result.isEmpty { result = "0" }
        return result
    }
}
