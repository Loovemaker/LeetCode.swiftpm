import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isValid() {
        typealias Input = String
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ""
            "()"
            "[]"
            "{}"
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            "(})"
            "["
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isValid)
    }
}

