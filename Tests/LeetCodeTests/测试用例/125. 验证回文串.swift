import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isPalindrome_String() {
        typealias Input = String
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            "A man, a plan, a canal: Panama"
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            "race a car"
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isPalindrome)
    }
}

