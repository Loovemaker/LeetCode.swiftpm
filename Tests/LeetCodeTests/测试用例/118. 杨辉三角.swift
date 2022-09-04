import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_generate() {
        typealias Input = Int
        typealias Output = [[Int]]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (1, [[1]])
            (5, [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])
        }
        
        casePairs.xctAssertEqual(in: solution.generate)
    }
}

