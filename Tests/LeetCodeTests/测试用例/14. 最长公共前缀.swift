import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_longestCommonPrefix() {
        typealias Element = String
        typealias Input = [Element]
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (["flower", "flow", "flight"], "fl")
            (["dog", "racecar", "car"], "")
        }
        
        casePairs.xctAssertEqual(in: solution.longestCommonPrefix)
    }
}
