import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_myPow() {
        typealias Input = (Double, Int)
        typealias Output = Double
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((2.0, 10), 1024)
            ((2.1, 3), 9.261)
            ((0, 0), 1)
            ((-2, -3), -1/8)
        }
        
        casePairs.xctAssertEqual(in: solution.myPow)
    }
}

