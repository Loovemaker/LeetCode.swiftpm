import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_findPeakElement() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Set<Int>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 2, 3, 1], [2])
            ([1, 2, 1, 3, 5, 6, 4], [1, 5])
        }
        
        casePairs.xctAssert { input, output in
            output.contains(solution.findPeakElement(input))
        }
    }
}

