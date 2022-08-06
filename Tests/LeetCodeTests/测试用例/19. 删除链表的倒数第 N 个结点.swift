import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_removeNthFromEnd() {
        typealias Element = Int
        typealias Input = ([Element], Int)
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((Array(1 ... 5), 2), [1, 2, 3, 5])
            (([1], 1), [])
            (([1, 2], 1), [1])
        }
        
        casePairs.xctAssertEqual {
            solution.removeNthFromEnd(.init(from: $0.0), $0.1)?.array ?? []
        }
    }
}

