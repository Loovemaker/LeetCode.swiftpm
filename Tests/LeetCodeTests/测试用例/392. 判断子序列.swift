import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isSubsequence() {
        typealias Input = (String, String)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ("abc", "ahbgdc")
            ("", "ahbgdc")
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            ("axc", "ahbgdc")
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isSubsequence)
    }
}

