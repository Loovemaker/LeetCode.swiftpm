import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_lengthOfLongestSubstring() {
        typealias Input = String
        typealias Output = Int

        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("abcabcbb",    3)
            ("bbbbb",       1)
            ("pwwkew",      3)
            ("dvdf",        3)
        }
        
        casePairs.xctAssertEqual(in: solution.lengthOfLongestSubstring)
    }
}
