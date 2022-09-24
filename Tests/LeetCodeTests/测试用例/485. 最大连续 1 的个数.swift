import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_findMaxConsecutiveOnes() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 1, 0, 1, 1, 1], 3)
            ([1, 0, 1, 1, 0, 1], 2)
        }
        
        casePairs.xctAssertEqual(in: solution.findMaxConsecutiveOnes)
    }
}

