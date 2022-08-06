import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_plusOne() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([0,], [1,])
            ([1, 9], [2, 0])
            ([9, 9], [1, 0, 0])
        }
        
        casePairs.xctAssertEqual(in: solution.plusOne)
    }
}

