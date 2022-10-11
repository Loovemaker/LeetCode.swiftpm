import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_containsDuplicate() {
        typealias Input = [Int]
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            [1, 2, 3, 1]
            [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            [1, 2, 3, 4]
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.containsDuplicate)
    }
}

