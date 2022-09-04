import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_titleToNumber() {
        typealias Input = String
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("A", 1)
            ("AB", 28)
            ("ZY", 701)
        }
        
        casePairs.xctAssertEqual(in: solution.titleToNumber)
    }
}

