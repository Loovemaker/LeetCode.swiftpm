import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isPalindrome_ListNode() {
        typealias Input = [Int]
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            [1, 2, 2, 1]
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            [1, 2]
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual {
            solution.isPalindrome(ListNode(from: $0))
        }
    }
}

