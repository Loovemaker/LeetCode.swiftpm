import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_numJewelsInStones() {
        typealias Input = (String, String)
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (("aA", "aAAbbbb"), 3)
            (("z", "ZZ"), 0)
        }
        
        casePairs.xctAssertEqual(in: solution.numJewelsInStones)
    }
}

