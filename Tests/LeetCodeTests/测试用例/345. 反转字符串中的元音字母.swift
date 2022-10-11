import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_reverseVowels() {
        typealias Input = String
        typealias Output = String
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("hello", "holle")
            ("leetcode", "leotcede")
        }
        
        casePairs.xctAssertEqual(in: solution.reverseVowels)
    }
}

