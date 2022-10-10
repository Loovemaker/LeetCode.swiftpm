import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_rotate_189() {
        typealias Element = Int
        typealias Input = ([Element], Int)
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([1,2,3,4,5,6,7], 3), [5,6,7,1,2,3,4])
            (([-1,-100,3,99], 2), [3,99,-1,-100])
        }
        
        casePairs.xctAssertEqual {
            var data = $0.0
            solution.rotate(&data, $0.1)
            return data
        }
    }
}

