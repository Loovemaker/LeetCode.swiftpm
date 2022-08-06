import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_mergeTwoLists() {
        typealias Element = Int
        typealias Input = ([Element], [Element])
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([1, 2, 4], [1, 3, 4]), [1, 1, 2, 3, 4, 4])
            (([], []), [])
        }
        
        casePairs.xctAssertEqual {
            solution.mergeTwoLists(
                .init(from: $0.0),
                .init(from: $0.1)
            )?.array ?? []
        }
    }
}

