import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_maxSubArray() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([-2, 1, -3, 4, -1, 2, 1, -5, 4], 6)
            ([1], 1)
            ([5, 4, -1, 7, 8], 23)
            ([-1], -1)
        }
        
        casePairs.xctAssertEqual(in: solution.maxSubArray)
    }
}

