import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_frequencySort() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1,1,2,2,2,3], [3,1,1,2,2,2])
            ([2,3,1,3,2], [1,3,3,2,2])
            ([-1,1,-6,4,5,-6,1,4,1], [5,-1,4,4,-6,-6,1,1,1])
        }
        
        casePairs.xctAssertEqual(in: solution.frequencySort)
    }
}

