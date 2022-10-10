import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_moveZeroes() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([0, 1, 0, 3, 12], [1, 3, 12, 0, 0])
            ([0], [0])
        }
        
        casePairs.xctAssertEqual {
            var data = $0
            solution.moveZeroes(&data)
            return data
        }
    }
}

