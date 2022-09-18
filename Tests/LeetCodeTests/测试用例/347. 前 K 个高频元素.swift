import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_topKFrequent() {
        typealias Element = Int
        typealias Input = ([Element], Int)
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([1, 1, 1, 2, 2, 3], 2), [1, 2])
            (([1], 1), [1])
        }
        
        casePairs.xctAssertEqual(in: solution.topKFrequent)
    }
}

