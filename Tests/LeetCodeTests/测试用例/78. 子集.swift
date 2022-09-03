import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_subsets() {
        typealias Element = Int
        typealias Input = Set<Element>
        typealias Output = Set<Set<Element>>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1,2,3], [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]])
            ([0], [[],[0]])
        }
        
        casePairs.xctAssertEqual {
            solution.subsets($0.asArray)
                .map { $0.asSet }
                .asSet
        }
    }
}

