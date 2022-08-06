import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_climbStairs() {
        typealias Element = Int
        typealias Input = Element
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            let fib = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
            
            for (input, output) in fib.enumerated() {
                (input, output)
            }
        }
        
        casePairs.xctAssertEqual(in: solution.climbStairs)
    }
}

