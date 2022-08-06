import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isPalindrome_Int() {
        typealias Input = Int
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            121
            404
            999
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            -121
            -234
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isPalindrome)
    }
}
