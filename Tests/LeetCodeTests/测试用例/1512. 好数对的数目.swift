import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_numIdenticalPairs() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 2, 3, 1, 1, 3], 4)
            ([1, 1, 1, 1], 6)
            ([1, 2, 3], 0)
        }
        
        casePairs.xctAssertEqual(in: solution.numIdenticalPairs)
    }
}

