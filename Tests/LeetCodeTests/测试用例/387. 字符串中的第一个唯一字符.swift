import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_firstUniqChar() {
        typealias Input = String
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("leetcode", 0)
            ("loveleetcode", 2)
            ("aabb", -1)
        }
        
        casePairs.xctAssertEqual(in: solution.firstUniqChar)
    }
}

