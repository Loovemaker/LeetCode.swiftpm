import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_searchInsert() {
        typealias Element = Int
        typealias Input = ([Element], Int)
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([1, 3, 5, 6], 5), 2)
            (([1, 3, 5, 6], 2), 1)
            (([1, 3, 5, 6], 7), 4)
            (([1, 3, 5, 6], 0), 0)
            
            (([1,], 0), 0)
        }
        
        casePairs.xctAssertEqual(in: solution.searchInsert)
    }
}

