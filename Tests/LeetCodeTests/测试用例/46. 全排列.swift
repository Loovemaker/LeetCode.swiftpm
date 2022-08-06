import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_permute() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = Set<[Element]>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1,2,3], [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]])
            ([0,1], [[0,1],[1,0]])
            ([1], [[1]])
        }
        
        casePairs.xctAssertEqual {
            Set(solution.permute($0))
        }
    }
}

