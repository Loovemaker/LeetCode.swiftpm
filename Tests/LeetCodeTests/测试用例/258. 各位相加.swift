import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_addDigits() {
        typealias Input = Int
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (38, 2)
            (0, 0)
        }
        
        casePairs.xctAssertEqual(in: solution.addDigits)
    }
}

