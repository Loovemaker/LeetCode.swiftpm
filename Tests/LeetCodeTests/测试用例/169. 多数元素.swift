import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_majorityElement() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([3, 2, 3], 3)
            ([2, 2, 1, 1, 1, 2, 2], 2)
            ([6, 6, 6, 7, 7], 6)
        }
        
        casePairs.xctAssertEqual(in: solution.majorityElement)
    }
}

