import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_removeElements() {
        typealias Element = Int
        typealias Input = ([Element], Element)
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([1,2,6,3,4,5,6], 6), [1,2,3,4,5])
            (([], 1), [])
            (([7,7,7,7], 7), [])
        }
        
        casePairs.xctAssertEqual {
            solution.removeElements($0.0.asListNode, $0.1)?.array ?? []
        }
    }
}

