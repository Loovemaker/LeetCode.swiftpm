import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_maxArea() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Element

        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 8, 6, 2, 5, 4, 8, 3, 7], 49)
            ([1, 1], 1)
        }
        
        casePairs.xctAssertEqual(in: solution.maxArea)
    }
}
