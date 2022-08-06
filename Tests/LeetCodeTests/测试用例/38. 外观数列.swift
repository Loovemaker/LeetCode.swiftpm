import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_countAndSay() {
        typealias Input = Int
        typealias Output = String
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (1, "1")
            (4, "1211")
            (5, "111221")
            (6, "312211")
        }
        
        casePairs.xctAssertEqual(in: solution.countAndSay)
    }
}

