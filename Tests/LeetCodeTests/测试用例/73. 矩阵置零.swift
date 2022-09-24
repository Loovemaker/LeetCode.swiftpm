import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_setZeroes() {
        typealias Element = Int
        typealias Input = [[Int]]
        typealias Output = [[Int]]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (
                [[1,1,1],[1,0,1],[1,1,1]],
                [[1,0,1],[0,0,0],[1,0,1]]
            )
            (
                [[0,1,2,0],[3,4,5,2],[1,3,1,5]],
                [[0,0,0,0],[0,4,5,0],[0,3,1,0]]
            )
        }
        
        casePairs.xctAssertEqual {
            var data = $0
            solution.setZeroes(&data)
            return data
        }
    }
}

