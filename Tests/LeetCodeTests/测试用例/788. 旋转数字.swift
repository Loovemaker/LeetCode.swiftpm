import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_rotatedDigits() {
        typealias Input = Int
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (10, 4)
            (857, 247)
        }
        
        casePairs.xctAssertEqual(in: solution.rotatedDigits)
    }
}

