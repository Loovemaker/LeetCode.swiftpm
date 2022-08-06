import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_addTwoNumbers() {
        typealias Element = Int
        typealias Input = ([Element], [Element])
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([2, 4, 3], [5, 6, 4]), [7, 0, 8])
            (([0], [0]), [0])
        }
        
        casePairs.xctAssertEqual {
            solution.addTwoNumbers(.init(from: $0.0), .init(from: $0.1))?.array ?? []
        }
    }
}

