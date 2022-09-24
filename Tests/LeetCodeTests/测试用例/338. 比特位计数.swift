import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_countBits() {
        typealias Input = Int
        typealias Output = [Int]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (0, [0])
            (2, [0, 1, 1])
            (5, [0, 1, 1, 2, 1, 2])
        }
        
        casePairs.xctAssertEqual(in: solution.countBits)
    }
}

