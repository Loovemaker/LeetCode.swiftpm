import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_rangeBitwiseAnd() {
        typealias Input = (Int, Int)
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((5, 7), 4)
            ((0, 0), 0)
            ((1, 0xffffffff), 0)
        }
        
        casePairs.xctAssertEqual(in: solution.rangeBitwiseAnd)
    }
}

