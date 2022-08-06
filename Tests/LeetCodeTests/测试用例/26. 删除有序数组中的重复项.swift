import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_removeDuplicates() {
        typealias Element = Int
        typealias Input = [Element]
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ([1, 1, 2], [1, 2])
            ([0,0, 1,1,1, 2,2, 3,3, 4], [0, 1, 2, 3, 4])
            ([1, 1], [1,])
        }
        
        casePairs.xctAssertEqual {
            var data = $0
            let count = solution.removeDuplicates(&data)
            XCTAssertEqual(count, data.count)
            return data
        }
    }
}

