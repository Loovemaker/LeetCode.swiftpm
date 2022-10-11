import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_hammingDistance() {
        typealias Input = (Int, Int)
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ((1, 4), 2)
            ((3, 1), 1)
        }
        
        casePairs.xctAssertEqual(in: solution.hammingDistance)
    }
}

