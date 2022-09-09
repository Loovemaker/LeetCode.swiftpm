import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_firstMissingPositive() {
        typealias Input = [Int]
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 2, 0], 3)
            ([3, 4, -1, 1], 2)
            ([7, 8, 9, 11, 12], 1)
        }
        
        casePairs.xctAssertEqual(in: solution.firstMissingPositive)
    }
}

