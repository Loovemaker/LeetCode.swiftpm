import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_getRow() {
        typealias Input = Int
        typealias Output = [Int]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (3, [1, 3, 3, 1])
            (0, [1])
            (1, [1, 1])
            (4, [1, 4, 6, 4, 1])
        }
        
        casePairs.xctAssertEqual(in: solution.getRow)
    }
}

