import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_countSegments() {
        typealias Input = String
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("Hello, my name is John", 5)
            (", , , , a, eaefa", 6)
        }
        
        casePairs.xctAssertEqual(in: solution.countSegments)
    }
}

